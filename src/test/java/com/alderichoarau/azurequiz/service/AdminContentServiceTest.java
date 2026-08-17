package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.AdminQuestionDetailDto;
import com.alderichoarau.azurequiz.dto.AdminQuestionSummaryDto;
import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
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
import com.alderichoarau.azurequiz.entity.ModuleType;
import com.alderichoarau.azurequiz.entity.Question;
import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import com.alderichoarau.azurequiz.entity.QuestionType;
import com.alderichoarau.azurequiz.entity.QuizModule;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.AnswerOptionRepository;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.QuestionContentBlockRepository;
import com.alderichoarau.azurequiz.repository.QuestionRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.multipart.MultipartFile;

@ExtendWith(MockitoExtension.class)
class AdminContentServiceTest {

    @Mock private CertificationRepository certificationRepository;
    @Mock private QuizModuleRepository moduleRepository;
    @Mock private QuestionRepository questionRepository;
    @Mock private AnswerOptionRepository answerOptionRepository;
    @Mock private QuestionContentBlockRepository questionContentBlockRepository;
    @Mock private QuestionImageStorageService questionImageStorageService;

    private AdminContentService service;

    @BeforeEach
    void setUp() {
        service =
                new AdminContentService(
                        certificationRepository,
                        moduleRepository,
                        questionRepository,
                        answerOptionRepository,
                        questionContentBlockRepository,
                        questionImageStorageService);
    }

    @Test
    void createCertification_duplicateCode_throwsInvalidRequest() {
        when(certificationRepository.existsByCode("AZ-104")).thenReturn(true);
        CreateCertificationRequest request = new CreateCertificationRequest("AZ-104", "Azure Admin", null, null);

        assertThatThrownBy(() -> service.createCertification(request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createCertification_newCode_savesAndReturnsSummary() {
        when(certificationRepository.existsByCode("AZ-104")).thenReturn(false);
        when(certificationRepository.findAllByOrderByPositionAsc()).thenReturn(List.of());
        CreateCertificationRequest request =
                new CreateCertificationRequest("AZ-104", "Azure Administrator", "desc", null);

        CertificationSummaryDto result = service.createCertification(request);

        assertThat(result.code()).isEqualTo("AZ-104");
        assertThat(result.moduleCount()).isZero();
    }

    @Test
    void createModule_certificationNotFound_throwsResourceNotFound() {
        UUID certificationId = UUID.randomUUID();
        when(certificationRepository.findById(certificationId)).thenReturn(Optional.empty());
        CreateModuleRequest request =
                new CreateModuleRequest("module-01", "Module 1", null, null, ModuleType.CONTENT);

        assertThatThrownBy(() -> service.createModule(certificationId, request))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void createModule_duplicateCode_throwsInvalidRequest() {
        UUID certificationId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        when(certificationRepository.findById(certificationId)).thenReturn(Optional.of(certification));
        when(moduleRepository.existsByCertificationIdAndCode(certificationId, "module-01")).thenReturn(true);
        CreateModuleRequest request =
                new CreateModuleRequest("module-01", "Module 1", null, null, ModuleType.CONTENT);

        assertThatThrownBy(() -> service.createModule(certificationId, request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createModule_valid_savesAndReturnsSummary() {
        UUID certificationId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        when(certificationRepository.findById(certificationId)).thenReturn(Optional.of(certification));
        when(moduleRepository.existsByCertificationIdAndCode(certificationId, "module-01")).thenReturn(false);
        when(moduleRepository.findAllByCertificationIdOrderByPositionAsc(certificationId)).thenReturn(List.of());

        ModuleSummaryDto result =
                service.createModule(
                        certificationId,
                        new CreateModuleRequest("module-01", "Module 1", null, null, ModuleType.CONTENT));

        assertThat(result.code()).isEqualTo("module-01");
        assertThat(result.type()).isEqualTo(ModuleType.CONTENT);
        assertThat(result.questionCount()).isZero();
    }

    @Test
    void createQuestion_moduleNotFound_throwsResourceNotFound() {
        UUID moduleId = UUID.randomUUID();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.empty());
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        null,
                        List.of(new CreateAnswerOptionRequest("A", true)),
                        List.of(new CreateContentBlockRequest(ContentBlockType.TEXT, "Statement", null)));

        assertThatThrownBy(() -> service.createQuestion(moduleId, request, List.of()))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void createQuestion_noCorrectOption_throwsInvalidRequest() {
        UUID moduleId = UUID.randomUUID();
        stubModule(moduleId);
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        null,
                        List.of(new CreateAnswerOptionRequest("A", false), new CreateAnswerOptionRequest("B", false)),
                        List.of(new CreateContentBlockRequest(ContentBlockType.TEXT, "Statement", null)));

        assertThatThrownBy(() -> service.createQuestion(moduleId, request, List.of()))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createQuestion_emptyTextBlock_throwsInvalidRequest() {
        UUID moduleId = UUID.randomUUID();
        stubModule(moduleId);
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        null,
                        List.of(new CreateAnswerOptionRequest("A", true)),
                        List.of(new CreateContentBlockRequest(ContentBlockType.TEXT, "   ", null)));

        assertThatThrownBy(() -> service.createQuestion(moduleId, request, List.of()))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createQuestion_imageBlockMissingUploadedFile_throwsInvalidRequest() {
        UUID moduleId = UUID.randomUUID();
        stubModule(moduleId);
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        null,
                        List.of(new CreateAnswerOptionRequest("A", true)),
                        List.of(
                                new CreateContentBlockRequest(ContentBlockType.TEXT, "Intro", null),
                                new CreateContentBlockRequest(ContentBlockType.IMAGE, null, 0)));

        assertThatThrownBy(() -> service.createQuestion(moduleId, request, List.of()))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createQuestion_textImageText_uploadsImageAndSavesBlocksInOrder() {
        UUID moduleId = UUID.randomUUID();
        UUID certificationId = stubModule(moduleId);
        when(questionRepository.countByModuleIdAndActiveTrue(moduleId)).thenReturn(0L);
        when(questionImageStorageService.upload(any(UUID.class), any(byte[].class)))
                .thenReturn("question-images/generated-key");

        MultipartFile image = new MockMultipartFile("images", "diagram.png", "image/png", new byte[] {1, 2, 3});
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        "Because.",
                        List.of(new CreateAnswerOptionRequest("A", true), new CreateAnswerOptionRequest("B", false)),
                        List.of(
                                new CreateContentBlockRequest(ContentBlockType.TEXT, "Look at this diagram:", null),
                                new CreateContentBlockRequest(ContentBlockType.IMAGE, null, 0),
                                new CreateContentBlockRequest(ContentBlockType.TEXT, "What does it show?", null)));

        QuestionCreatedDto result = service.createQuestion(moduleId, request, List.of(image));

        assertThat(result.certificationId()).isEqualTo(certificationId);
        verify(questionImageStorageService).upload(any(UUID.class), org.mockito.ArgumentMatchers.eq(new byte[] {1, 2, 3}));

        @SuppressWarnings("unchecked")
        org.mockito.ArgumentCaptor<List<com.alderichoarau.azurequiz.entity.QuestionContentBlock>> blocksCaptor =
                org.mockito.ArgumentCaptor.forClass(List.class);
        verify(questionContentBlockRepository).saveAll(blocksCaptor.capture());
        List<com.alderichoarau.azurequiz.entity.QuestionContentBlock> savedBlocks = blocksCaptor.getValue();

        assertThat(savedBlocks).hasSize(3);
        assertThat(savedBlocks.get(0).getType()).isEqualTo(ContentBlockType.TEXT);
        assertThat(savedBlocks.get(0).getTextContent()).isEqualTo("Look at this diagram:");
        assertThat(savedBlocks.get(1).getType()).isEqualTo(ContentBlockType.IMAGE);
        assertThat(savedBlocks.get(1).getImageBlobName()).isEqualTo("question-images/generated-key");
        assertThat(savedBlocks.get(1).getImageContentType()).isEqualTo("image/png");
        assertThat(savedBlocks.get(2).getType()).isEqualTo(ContentBlockType.TEXT);
        assertThat(savedBlocks.get(2).getTextContent()).isEqualTo("What does it show?");

        @SuppressWarnings("unchecked")
        org.mockito.ArgumentCaptor<List<com.alderichoarau.azurequiz.entity.AnswerOption>> optionsCaptor =
                org.mockito.ArgumentCaptor.forClass(List.class);
        verify(answerOptionRepository).saveAll(optionsCaptor.capture());
        assertThat(optionsCaptor.getValue()).hasSize(2);
    }

    @Test
    void updateModule_wrongCertification_throwsResourceNotFound() {
        UUID certificationId = UUID.randomUUID();
        UUID otherCertificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        Certification otherCertification =
                Certification.builder().id(otherCertificationId).code("AZ-900").build();
        QuizModule module =
                QuizModule.builder().id(moduleId).certification(otherCertification).code("module-01").build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        CreateModuleRequest request =
                new CreateModuleRequest("module-01", "Module 1", null, null, ModuleType.CONTENT);

        assertThatThrownBy(() -> service.updateModule(certificationId, moduleId, request))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void updateModule_codeConflictsWithAnotherModule_throwsInvalidRequest() {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        QuizModule module =
                QuizModule.builder()
                        .id(moduleId)
                        .certification(certification)
                        .code("module-01")
                        .type(ModuleType.CONTENT)
                        .active(true)
                        .build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        when(moduleRepository.existsByCertificationIdAndCodeAndIdNot(certificationId, "module-02", moduleId))
                .thenReturn(true);
        CreateModuleRequest request =
                new CreateModuleRequest("module-02", "Module 1", null, null, ModuleType.CONTENT);

        assertThatThrownBy(() -> service.updateModule(certificationId, moduleId, request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void updateModule_valid_updatesFieldsAndReturnsSummary() {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        QuizModule module =
                QuizModule.builder()
                        .id(moduleId)
                        .certification(certification)
                        .code("module-01")
                        .title("Old title")
                        .type(ModuleType.CONTENT)
                        .active(true)
                        .build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        when(questionRepository.countByModuleIdAndActiveTrue(moduleId)).thenReturn(5L);
        CreateModuleRequest request =
                new CreateModuleRequest("module-01", "New title", "New description", 2, ModuleType.MOCK_EXAM);

        ModuleSummaryDto result = service.updateModule(certificationId, moduleId, request);

        assertThat(result.title()).isEqualTo("New title");
        assertThat(result.description()).isEqualTo("New description");
        assertThat(result.position()).isEqualTo(2);
        assertThat(result.type()).isEqualTo(ModuleType.MOCK_EXAM);
        assertThat(result.questionCount()).isEqualTo(5L);
    }

    @Test
    void deleteModule_deactivatesModuleAndItsActiveQuestions() {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        QuizModule module =
                QuizModule.builder().id(moduleId).certification(certification).code("module-01").active(true).build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        Question question1 = Question.builder().id(UUID.randomUUID()).module(module).active(true).build();
        Question question2 = Question.builder().id(UUID.randomUUID()).module(module).active(true).build();
        when(questionRepository.findByModuleIdAndActiveTrueOrderByPositionAsc(moduleId))
                .thenReturn(List.of(question1, question2));

        service.deleteModule(certificationId, moduleId);

        assertThat(module.isActive()).isFalse();
        assertThat(question1.isActive()).isFalse();
        assertThat(question2.isActive()).isFalse();
        verify(questionRepository).saveAll(List.of(question1, question2));
    }

    @Test
    void listQuestions_moduleNotFound_throwsResourceNotFound() {
        UUID moduleId = UUID.randomUUID();
        when(moduleRepository.existsById(moduleId)).thenReturn(false);

        assertThatThrownBy(() -> service.listQuestions(moduleId)).isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void listQuestions_returnsActiveQuestionsOnly() {
        UUID moduleId = UUID.randomUUID();
        when(moduleRepository.existsById(moduleId)).thenReturn(true);
        Question question =
                Question.builder()
                        .id(UUID.randomUUID())
                        .statement("What is Azure?")
                        .type(QuestionType.SINGLE_CHOICE)
                        .active(true)
                        .build();
        when(questionRepository.findByModuleIdAndActiveTrueOrderByPositionAsc(moduleId))
                .thenReturn(List.of(question));

        List<AdminQuestionSummaryDto> result = service.listQuestions(moduleId);

        assertThat(result).hasSize(1);
        assertThat(result.get(0).statement()).isEqualTo("What is Azure?");
    }

    @Test
    void getQuestion_returnsOptionsWithCorrectFlagsAndContentBlocks() {
        UUID questionId = stubQuestionWithModule(UUID.randomUUID());
        AnswerOption correctOption =
                AnswerOption.builder().id(UUID.randomUUID()).label("A").correct(true).position(1).build();
        AnswerOption wrongOption =
                AnswerOption.builder().id(UUID.randomUUID()).label("B").correct(false).position(2).build();
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(correctOption, wrongOption));
        QuestionContentBlock textBlock =
                QuestionContentBlock.builder()
                        .id(UUID.randomUUID())
                        .type(ContentBlockType.TEXT)
                        .textContent("Look at this:")
                        .build();
        when(questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(textBlock));

        AdminQuestionDetailDto result = service.getQuestion(questionId);

        assertThat(result.options()).hasSize(2);
        assertThat(result.options().get(0).correct()).isTrue();
        assertThat(result.options().get(1).correct()).isFalse();
        assertThat(result.contentBlocks()).hasSize(1);
        assertThat(result.contentBlocks().get(0).text()).isEqualTo("Look at this:");
    }

    @Test
    void updateQuestion_noCorrectOption_throwsInvalidRequest() {
        UUID questionId = stubQuestionWithModule(UUID.randomUUID());
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        null,
                        List.of(new CreateAnswerOptionRequest("A", false)),
                        List.of(new CreateContentBlockRequest(ContentBlockType.TEXT, "Statement", null)));

        assertThatThrownBy(() -> service.updateQuestion(questionId, request, List.of()))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void updateQuestion_replacesOptionsAndBlocksAndDeletesOldImageBlob() {
        UUID questionId = stubQuestionWithModule(UUID.randomUUID());
        AnswerOption oldOption = AnswerOption.builder().id(UUID.randomUUID()).label("Old").position(1).build();
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(oldOption));
        QuestionContentBlock oldImageBlock =
                QuestionContentBlock.builder()
                        .id(UUID.randomUUID())
                        .type(ContentBlockType.IMAGE)
                        .imageBlobName("question-images/old-blob")
                        .build();
        when(questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(oldImageBlock));
        when(questionImageStorageService.upload(any(UUID.class), any(byte[].class)))
                .thenReturn("question-images/new-blob");

        MultipartFile image = new MockMultipartFile("images", "new.png", "image/png", new byte[] {9});
        CreateQuestionRequest request =
                new CreateQuestionRequest(
                        QuestionType.SINGLE_CHOICE,
                        "Updated explanation",
                        List.of(
                                new CreateAnswerOptionRequest("A", true),
                                new CreateAnswerOptionRequest("B", false)),
                        List.of(
                                new CreateContentBlockRequest(ContentBlockType.TEXT, "Updated text", null),
                                new CreateContentBlockRequest(ContentBlockType.IMAGE, null, 0)));

        service.updateQuestion(questionId, request, List.of(image));

        verify(answerOptionRepository).deleteAll(List.of(oldOption));
        verify(questionContentBlockRepository).deleteAll(List.of(oldImageBlock));
        verify(questionImageStorageService).delete("question-images/old-blob");

        @SuppressWarnings("unchecked")
        org.mockito.ArgumentCaptor<List<AnswerOption>> optionsCaptor = org.mockito.ArgumentCaptor.forClass(List.class);
        verify(answerOptionRepository).saveAll(optionsCaptor.capture());
        assertThat(optionsCaptor.getValue()).hasSize(2);

        @SuppressWarnings("unchecked")
        org.mockito.ArgumentCaptor<List<QuestionContentBlock>> blocksCaptor =
                org.mockito.ArgumentCaptor.forClass(List.class);
        verify(questionContentBlockRepository).saveAll(blocksCaptor.capture());
        assertThat(blocksCaptor.getValue()).hasSize(2);
        assertThat(blocksCaptor.getValue().get(1).getImageBlobName()).isEqualTo("question-images/new-blob");
    }

    @Test
    void deleteQuestion_setsActiveFalseAndReturnsCertificationId() {
        UUID certificationId = UUID.randomUUID();
        UUID questionId = stubQuestionWithModule(certificationId);

        UUID result = service.deleteQuestion(questionId);

        assertThat(result).isEqualTo(certificationId);
        @SuppressWarnings("unchecked")
        org.mockito.ArgumentCaptor<Question> questionCaptor = org.mockito.ArgumentCaptor.forClass(Question.class);
        verify(questionRepository).save(questionCaptor.capture());
        assertThat(questionCaptor.getValue().isActive()).isFalse();
    }

    /** Stubs a question whose module belongs to the given certificationId (or a fresh random one
     * if null), returning the question's id. */
    private UUID stubQuestionWithModule(UUID certificationId) {
        UUID resolvedCertificationId = certificationId != null ? certificationId : UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        Certification certification =
                Certification.builder().id(resolvedCertificationId).code("AZ-104").build();
        QuizModule module =
                QuizModule.builder()
                        .id(UUID.randomUUID())
                        .certification(certification)
                        .code("module-01")
                        .active(true)
                        .build();
        Question question =
                Question.builder()
                        .id(questionId)
                        .module(module)
                        .type(QuestionType.SINGLE_CHOICE)
                        .statement("Old statement")
                        .active(true)
                        .build();
        when(questionRepository.findById(questionId)).thenReturn(Optional.of(question));
        return questionId;
    }

    private UUID stubModule(UUID moduleId) {
        UUID certificationId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-104").build();
        QuizModule module =
                QuizModule.builder()
                        .id(moduleId)
                        .certification(certification)
                        .code("module-01")
                        .type(ModuleType.CONTENT)
                        .build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        return certificationId;
    }
}
