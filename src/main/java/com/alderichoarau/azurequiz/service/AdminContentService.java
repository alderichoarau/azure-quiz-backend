package com.alderichoarau.azurequiz.service;

import com.alderichoarau.azurequiz.dto.AdminAnswerOptionDto;
import com.alderichoarau.azurequiz.dto.AdminQuestionDetailDto;
import com.alderichoarau.azurequiz.dto.AdminQuestionSummaryDto;
import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.dto.ContentBlockDto;
import com.alderichoarau.azurequiz.dto.CreateAnswerOptionRequest;
import com.alderichoarau.azurequiz.dto.CreateCertificationRequest;
import com.alderichoarau.azurequiz.dto.CreateContentBlockRequest;
import com.alderichoarau.azurequiz.dto.CreateModuleRequest;
import com.alderichoarau.azurequiz.dto.CreateQuestionRequest;
import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.alderichoarau.azurequiz.dto.QuestionCreatedDto;
import com.alderichoarau.azurequiz.entity.AnswerOption;
import com.alderichoarau.azurequiz.entity.Certification;
import com.alderichoarau.azurequiz.entity.ContentBlockType;
import com.alderichoarau.azurequiz.entity.Question;
import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import com.alderichoarau.azurequiz.entity.QuizModule;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.AnswerOptionRepository;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.QuestionContentBlockRepository;
import com.alderichoarau.azurequiz.repository.QuestionRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class AdminContentService {

    private final CertificationRepository certificationRepository;
    private final QuizModuleRepository moduleRepository;
    private final QuestionRepository questionRepository;
    private final AnswerOptionRepository answerOptionRepository;
    private final QuestionContentBlockRepository questionContentBlockRepository;
    private final QuestionImageStorageService questionImageStorageService;

    @CacheEvict(value = "certifications", allEntries = true)
    public CertificationSummaryDto createCertification(CreateCertificationRequest request) {
        if (certificationRepository.existsByCode(request.code())) {
            throw new InvalidQuizRequestException("Certification code already exists: " + request.code());
        }
        int position = request.position() != null ? request.position() : nextCertificationPosition();
        Certification certification =
                Certification.builder()
                        .code(request.code())
                        .title(request.title())
                        .description(request.description())
                        .position(position)
                        .build();
        certificationRepository.save(certification);
        log.info("Admin created certification {} ({})", certification.getCode(), certification.getId());
        return new CertificationSummaryDto(
                certification.getId(),
                certification.getCode(),
                certification.getTitle(),
                certification.getDescription(),
                certification.getPosition(),
                0);
    }

    // Evicts both caches: "modules" (this certification's module list, including counts) and
    // "certifications" (the certification list's own moduleCount, which just changed too).
    @Caching(
            evict = {
                @CacheEvict(value = "modules", key = "#certificationId"),
                @CacheEvict(value = "certifications", allEntries = true)
            })
    public ModuleSummaryDto createModule(UUID certificationId, CreateModuleRequest request) {
        Certification certification =
                certificationRepository
                        .findById(certificationId)
                        .orElseThrow(
                                () -> new ResourceNotFoundException("Certification not found: " + certificationId));
        if (moduleRepository.existsByCertificationIdAndCode(certificationId, request.code())) {
            throw new InvalidQuizRequestException(
                    "Module code already exists for this certification: " + request.code());
        }
        int position =
                request.position() != null
                        ? request.position()
                        : moduleRepository.findAllByCertificationIdOrderByPositionAsc(certificationId).size() + 1;
        QuizModule module =
                QuizModule.builder()
                        .certification(certification)
                        .code(request.code())
                        .title(request.title())
                        .description(request.description())
                        .position(position)
                        .type(request.type())
                        .active(true)
                        .build();
        moduleRepository.save(module);
        log.info(
                "Admin created module {} ({}) under certification {}",
                module.getCode(),
                module.getId(),
                certification.getCode());
        return new ModuleSummaryDto(
                module.getId(),
                module.getCode(),
                module.getTitle(),
                module.getDescription(),
                module.getPosition(),
                module.getType(),
                0);
    }

    // Route (and this method) takes certificationId explicitly — same nesting as createModule —
    // so the cache-evict key is known up front, and so a moduleId from another certification
    // can't be edited through the wrong URL.
    @CacheEvict(value = "modules", key = "#certificationId")
    public ModuleSummaryDto updateModule(UUID certificationId, UUID moduleId, CreateModuleRequest request) {
        QuizModule module = findModuleInCertification(certificationId, moduleId);
        if (!module.getCode().equals(request.code())
                && moduleRepository.existsByCertificationIdAndCodeAndIdNot(certificationId, request.code(), moduleId)) {
            throw new InvalidQuizRequestException(
                    "Module code already exists for this certification: " + request.code());
        }
        module.setCode(request.code());
        module.setTitle(request.title());
        module.setDescription(request.description());
        if (request.position() != null) {
            module.setPosition(request.position());
        }
        module.setType(request.type());
        moduleRepository.save(module);
        log.info("Admin updated module {} ({})", module.getCode(), module.getId());
        return new ModuleSummaryDto(
                module.getId(),
                module.getCode(),
                module.getTitle(),
                module.getDescription(),
                module.getPosition(),
                module.getType(),
                questionRepository.countByModuleIdAndActiveTrue(module.getId()));
    }

    // "certifications" is evicted too: this module's moduleCount there just changed.
    @Caching(
            evict = {
                @CacheEvict(value = "modules", key = "#certificationId"),
                @CacheEvict(value = "certifications", allEntries = true)
            })
    public void deleteModule(UUID certificationId, UUID moduleId) {
        QuizModule module = findModuleInCertification(certificationId, moduleId);
        module.setActive(false);
        moduleRepository.save(module);
        // Cascades: a deleted module's questions must disappear from the student app too, not
        // linger as active questions in a now-invisible module.
        List<Question> questions = questionRepository.findByModuleIdAndActiveTrueOrderByPositionAsc(moduleId);
        questions.forEach(question -> question.setActive(false));
        questionRepository.saveAll(questions);
        log.info(
                "Admin deleted (deactivated) module {} and {} of its questions",
                module.getCode(),
                questions.size());
    }

    private QuizModule findModuleInCertification(UUID certificationId, UUID moduleId) {
        QuizModule module =
                moduleRepository
                        .findById(moduleId)
                        .orElseThrow(() -> new ResourceNotFoundException("Module not found: " + moduleId));
        if (!module.getCertification().getId().equals(certificationId)) {
            throw new ResourceNotFoundException("Module not found: " + moduleId);
        }
        return module;
    }

    @Transactional(readOnly = true)
    public List<AdminQuestionSummaryDto> listQuestions(UUID moduleId) {
        if (!moduleRepository.existsById(moduleId)) {
            throw new ResourceNotFoundException("Module not found: " + moduleId);
        }
        return questionRepository.findByModuleIdAndActiveTrueOrderByPositionAsc(moduleId).stream()
                .map(q -> new AdminQuestionSummaryDto(q.getId(), q.getStatement(), q.getType()))
                .toList();
    }

    @Transactional(readOnly = true)
    public AdminQuestionDetailDto getQuestion(UUID questionId) {
        Question question =
                questionRepository
                        .findById(questionId)
                        .orElseThrow(() -> new ResourceNotFoundException("Question not found: " + questionId));
        List<AdminAnswerOptionDto> options =
                answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId).stream()
                        .map(o -> new AdminAnswerOptionDto(o.getId(), o.getLabel(), o.isCorrect()))
                        .toList();
        List<ContentBlockDto> contentBlocks =
                questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(questionId).stream()
                        .map(b -> new ContentBlockDto(b.getId(), b.getType(), b.getTextContent()))
                        .toList();
        return new AdminQuestionDetailDto(
                question.getId(),
                question.getModule().getId(),
                question.getType(),
                question.getExplanation(),
                options,
                contentBlocks);
    }

    // No cache eviction: ModuleSummaryDto (the only thing "modules" caches) doesn't carry any
    // per-question content — editing a question's text/images/options doesn't change it.
    public QuestionCreatedDto updateQuestion(
            UUID questionId, CreateQuestionRequest request, List<MultipartFile> images) {
        Question question =
                questionRepository
                        .findById(questionId)
                        .orElseThrow(() -> new ResourceNotFoundException("Question not found: " + questionId));

        long correctCount = request.options().stream().filter(CreateAnswerOptionRequest::correct).count();
        if (correctCount == 0) {
            throw new InvalidQuizRequestException("At least one answer option must be marked correct");
        }

        answerOptionRepository.deleteAll(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId));

        // Every image block is always re-uploaded fresh by the admin UI on edit (even unchanged
        // ones — it re-fetches and resends them), so every old blob is now orphaned; clean them
        // up before the new blocks replace these rows.
        List<QuestionContentBlock> oldBlocks =
                questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(questionId);
        questionContentBlockRepository.deleteAll(oldBlocks);
        for (QuestionContentBlock oldBlock : oldBlocks) {
            if (oldBlock.getImageBlobName() != null) {
                questionImageStorageService.delete(oldBlock.getImageBlobName());
            }
        }

        question.setType(request.type());
        question.setStatement(deriveStatement(request.contentBlocks()));
        question.setExplanation(request.explanation());
        questionRepository.save(question);

        List<AnswerOption> options = new ArrayList<>();
        int optionPosition = 1;
        for (CreateAnswerOptionRequest optionRequest : request.options()) {
            options.add(
                    AnswerOption.builder()
                            .question(question)
                            .label(optionRequest.label())
                            .correct(optionRequest.correct())
                            .position(optionPosition++)
                            .build());
        }
        answerOptionRepository.saveAll(options);

        List<QuestionContentBlock> blocks = new ArrayList<>();
        int blockPosition = 1;
        for (CreateContentBlockRequest blockRequest : request.contentBlocks()) {
            blocks.add(toContentBlock(question, blockRequest, blockPosition++, images));
        }
        questionContentBlockRepository.saveAll(blocks);

        log.info(
                "Admin updated question {} in module {} ({} options, {} content blocks)",
                question.getId(),
                question.getModule().getCode(),
                options.size(),
                blocks.size());

        return new QuestionCreatedDto(question.getId(), question.getModule().getCertification().getId());
    }

    // Returns the certificationId so @CacheEvict can key off #result — this question's module
    // just lost one from its active questionCount.
    @CacheEvict(value = "modules", key = "#result")
    public UUID deleteQuestion(UUID questionId) {
        Question question =
                questionRepository
                        .findById(questionId)
                        .orElseThrow(() -> new ResourceNotFoundException("Question not found: " + questionId));
        question.setActive(false);
        questionRepository.save(question);
        log.info("Admin deleted (deactivated) question {} in module {}", questionId, question.getModule().getCode());
        return question.getModule().getCertification().getId();
    }

    @CacheEvict(value = "modules", key = "#result.certificationId")
    public QuestionCreatedDto createQuestion(
            UUID moduleId, CreateQuestionRequest request, List<MultipartFile> images) {
        QuizModule module =
                moduleRepository
                        .findById(moduleId)
                        .orElseThrow(() -> new ResourceNotFoundException("Module not found: " + moduleId));

        long correctCount = request.options().stream().filter(CreateAnswerOptionRequest::correct).count();
        if (correctCount == 0) {
            throw new InvalidQuizRequestException("At least one answer option must be marked correct");
        }

        int position = (int) questionRepository.countByModuleIdAndActiveTrue(moduleId) + 1;
        Question question =
                Question.builder()
                        .module(module)
                        .type(request.type())
                        .statement(deriveStatement(request.contentBlocks()))
                        .explanation(request.explanation())
                        .position(position)
                        .active(true)
                        .build();
        questionRepository.save(question);

        List<AnswerOption> options = new ArrayList<>();
        int optionPosition = 1;
        for (CreateAnswerOptionRequest optionRequest : request.options()) {
            options.add(
                    AnswerOption.builder()
                            .question(question)
                            .label(optionRequest.label())
                            .correct(optionRequest.correct())
                            .position(optionPosition++)
                            .build());
        }
        answerOptionRepository.saveAll(options);

        List<QuestionContentBlock> blocks = new ArrayList<>();
        int blockPosition = 1;
        for (CreateContentBlockRequest blockRequest : request.contentBlocks()) {
            blocks.add(toContentBlock(question, blockRequest, blockPosition++, images));
        }
        questionContentBlockRepository.saveAll(blocks);

        log.info(
                "Admin created question {} in module {} ({} options, {} content blocks)",
                question.getId(),
                module.getCode(),
                options.size(),
                blocks.size());

        return new QuestionCreatedDto(question.getId(), module.getCertification().getId());
    }

    private QuestionContentBlock toContentBlock(
            Question question, CreateContentBlockRequest request, int position, List<MultipartFile> images) {
        QuestionContentBlock.QuestionContentBlockBuilder block =
                QuestionContentBlock.builder().question(question).position(position).type(request.type());

        if (request.type() == ContentBlockType.TEXT) {
            if (request.text() == null || request.text().isBlank()) {
                throw new InvalidQuizRequestException("Text content block at position " + position + " is empty");
            }
            return block.textContent(request.text()).build();
        }

        if (request.imageIndex() == null
                || images == null
                || request.imageIndex() < 0
                || request.imageIndex() >= images.size()) {
            throw new InvalidQuizRequestException(
                    "Image content block at position " + position + " references a missing uploaded image");
        }
        MultipartFile image = images.get(request.imageIndex());
        String blobName = questionImageStorageService.upload(UUID.randomUUID(), readBytes(image));
        return block.imageBlobName(blobName).imageContentType(image.getContentType()).build();
    }

    private byte[] readBytes(MultipartFile file) {
        try {
            return file.getBytes();
        } catch (java.io.IOException e) {
            throw new InvalidQuizRequestException("Could not read uploaded image: " + e.getMessage());
        }
    }

    /** A short plain-text fallback (search, accessibility, legacy API consumers) derived from the
     * question's own text blocks — the frontend renders {@code contentBlocks} instead whenever
     * present, so this never needs to be exhaustive. */
    private String deriveStatement(List<CreateContentBlockRequest> contentBlocks) {
        String fromTextBlocks =
                contentBlocks.stream()
                        .filter(b -> b.type() == ContentBlockType.TEXT && b.text() != null)
                        .map(CreateContentBlockRequest::text)
                        .reduce((a, b) -> a + " " + b)
                        .orElse(null);
        if (fromTextBlocks == null || fromTextBlocks.isBlank()) {
            throw new InvalidQuizRequestException("At least one non-empty text content block is required");
        }
        return fromTextBlocks;
    }

    private int nextCertificationPosition() {
        return certificationRepository.findAllByOrderByPositionAsc().size() + 1;
    }
}
