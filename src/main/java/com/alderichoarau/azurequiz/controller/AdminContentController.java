package com.alderichoarau.azurequiz.controller;

import com.alderichoarau.azurequiz.dto.AdminQuestionDetailDto;
import com.alderichoarau.azurequiz.dto.AdminQuestionSummaryDto;
import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.dto.CreateCertificationRequest;
import com.alderichoarau.azurequiz.dto.CreateModuleRequest;
import com.alderichoarau.azurequiz.dto.CreateQuestionRequest;
import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.alderichoarau.azurequiz.dto.QuestionCreatedDto;
import com.alderichoarau.azurequiz.service.AdminContentService;
import jakarta.validation.Valid;
import java.util.List;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * Content-authoring endpoints (create/update/delete certification/module/question). Gated by
 * {@code AdminApiKeyFilter} (X-Admin-Key) in addition to the regular {@code ApiKeyFilter} that
 * already covers all of {@code /api/**} — see both filters' Javadoc for why they're separate
 * secrets.
 */
@RestController
@RequestMapping("/api/admin")
@RequiredArgsConstructor
public class AdminContentController {

    private final AdminContentService adminContentService;

    @PostMapping("/certifications")
    @ResponseStatus(HttpStatus.CREATED)
    public CertificationSummaryDto createCertification(@Valid @RequestBody CreateCertificationRequest request) {
        return adminContentService.createCertification(request);
    }

    @PostMapping("/certifications/{certificationId}/modules")
    @ResponseStatus(HttpStatus.CREATED)
    public ModuleSummaryDto createModule(
            @PathVariable UUID certificationId, @Valid @RequestBody CreateModuleRequest request) {
        return adminContentService.createModule(certificationId, request);
    }

    @PutMapping("/certifications/{certificationId}/modules/{moduleId}")
    public ModuleSummaryDto updateModule(
            @PathVariable UUID certificationId,
            @PathVariable UUID moduleId,
            @Valid @RequestBody CreateModuleRequest request) {
        return adminContentService.updateModule(certificationId, moduleId, request);
    }

    @DeleteMapping("/certifications/{certificationId}/modules/{moduleId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteModule(@PathVariable UUID certificationId, @PathVariable UUID moduleId) {
        adminContentService.deleteModule(certificationId, moduleId);
    }

    @GetMapping("/modules/{moduleId}/questions")
    public List<AdminQuestionSummaryDto> listQuestions(@PathVariable UUID moduleId) {
        return adminContentService.listQuestions(moduleId);
    }

    @PostMapping(value = "/modules/{moduleId}/questions", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @ResponseStatus(HttpStatus.CREATED)
    public QuestionCreatedDto createQuestion(
            @PathVariable UUID moduleId,
            @Valid @RequestPart("data") CreateQuestionRequest data,
            @RequestPart(value = "images", required = false) List<MultipartFile> images) {
        return adminContentService.createQuestion(moduleId, data, images);
    }

    @GetMapping("/questions/{questionId}")
    public AdminQuestionDetailDto getQuestion(@PathVariable UUID questionId) {
        return adminContentService.getQuestion(questionId);
    }

    @PutMapping(value = "/questions/{questionId}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public QuestionCreatedDto updateQuestion(
            @PathVariable UUID questionId,
            @Valid @RequestPart("data") CreateQuestionRequest data,
            @RequestPart(value = "images", required = false) List<MultipartFile> images) {
        return adminContentService.updateQuestion(questionId, data, images);
    }

    @DeleteMapping("/questions/{questionId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteQuestion(@PathVariable UUID questionId) {
        adminContentService.deleteQuestion(questionId);
    }
}
