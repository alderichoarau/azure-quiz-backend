package com.alderichoarau.azurequiz.controller;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.ArgumentMatchers.isNull;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.AdminQuestionDetailDto;
import com.alderichoarau.azurequiz.dto.AdminQuestionSummaryDto;
import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.alderichoarau.azurequiz.dto.QuestionCreatedDto;
import com.alderichoarau.azurequiz.entity.ModuleType;
import com.alderichoarau.azurequiz.entity.QuestionType;
import com.alderichoarau.azurequiz.exception.GlobalExceptionHandler;
import com.alderichoarau.azurequiz.service.AdminContentService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class AdminContentControllerTest {

    @Mock private AdminContentService adminContentService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc =
                standaloneSetup(new AdminContentController(adminContentService))
                        .setControllerAdvice(new GlobalExceptionHandler())
                        .build();
    }

    @Test
    void createCertification_validRequest_returns201() throws Exception {
        UUID certificationId = UUID.randomUUID();
        when(adminContentService.createCertification(any()))
                .thenReturn(new CertificationSummaryDto(certificationId, "AZ-900", "Azure Fundamentals", null, 0, 0));

        mvc.perform(
                        post("/api/admin/certifications")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"code\":\"AZ-900\",\"title\":\"Azure Fundamentals\"}"))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.code").value("AZ-900"));
    }

    @Test
    void createCertification_blankCode_returns400() throws Exception {
        mvc.perform(
                        post("/api/admin/certifications")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"code\":\"\",\"title\":\"Azure Fundamentals\"}"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void createModule_validRequest_returns201() throws Exception {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        when(adminContentService.createModule(eq(certificationId), any()))
                .thenReturn(
                        new ModuleSummaryDto(moduleId, "cloud-concepts", "Cloud concepts", null, 0, ModuleType.CONTENT, 0));

        mvc.perform(
                        post("/api/admin/certifications/{certificationId}/modules", certificationId)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(
                                        "{\"code\":\"cloud-concepts\",\"title\":\"Cloud concepts\",\"type\":\"CONTENT\"}"))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.code").value("cloud-concepts"));
    }

    @Test
    void updateModule_validRequest_returns200() throws Exception {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        when(adminContentService.updateModule(eq(certificationId), eq(moduleId), any()))
                .thenReturn(
                        new ModuleSummaryDto(moduleId, "cloud-concepts", "Updated", null, 0, ModuleType.CONTENT, 0));

        mvc.perform(
                        put(
                                        "/api/admin/certifications/{certificationId}/modules/{moduleId}",
                                        certificationId,
                                        moduleId)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"code\":\"cloud-concepts\",\"title\":\"Updated\",\"type\":\"CONTENT\"}"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.title").value("Updated"));
    }

    @Test
    void deleteModule_returns204() throws Exception {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();

        mvc.perform(
                        delete(
                                "/api/admin/certifications/{certificationId}/modules/{moduleId}",
                                certificationId,
                                moduleId))
                .andExpect(status().isNoContent());

        verify(adminContentService).deleteModule(certificationId, moduleId);
    }

    @Test
    void listQuestions_returnsServiceResult() throws Exception {
        UUID moduleId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        when(adminContentService.listQuestions(moduleId))
                .thenReturn(List.of(new AdminQuestionSummaryDto(questionId, "What is Azure?", QuestionType.SINGLE_CHOICE)));

        mvc.perform(get("/api/admin/modules/{moduleId}/questions", moduleId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].statement").value("What is Azure?"));
    }

    @Test
    void getQuestion_returnsServiceResult() throws Exception {
        UUID questionId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        when(adminContentService.getQuestion(questionId))
                .thenReturn(
                        new AdminQuestionDetailDto(
                                questionId, moduleId, QuestionType.SINGLE_CHOICE, "explanation", List.of(), List.of()));

        mvc.perform(get("/api/admin/questions/{questionId}", questionId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.explanation").value("explanation"));
    }

    @Test
    void deleteQuestion_returns204() throws Exception {
        UUID questionId = UUID.randomUUID();

        mvc.perform(delete("/api/admin/questions/{questionId}", questionId)).andExpect(status().isNoContent());

        verify(adminContentService).deleteQuestion(questionId);
    }

    @Test
    void createQuestion_multipartWithoutImages_returns201() throws Exception {
        UUID moduleId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        UUID certificationId = UUID.randomUUID();
        MockMultipartFile data =
                new MockMultipartFile(
                        "data",
                        "",
                        MediaType.APPLICATION_JSON_VALUE,
                        ("""
                        {"type":"SINGLE_CHOICE","explanation":"E",
                         "options":[{"label":"A","correct":true}],
                         "contentBlocks":[{"type":"TEXT","text":"Statement"}]}
                        """)
                                .getBytes());
        when(adminContentService.createQuestion(eq(moduleId), any(), isNull()))
                .thenReturn(new QuestionCreatedDto(questionId, certificationId));

        mvc.perform(multipart("/api/admin/modules/{moduleId}/questions", moduleId).file(data))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.questionId").value(questionId.toString()));
    }

    @Test
    void updateQuestion_multipartWithoutImages_returns200() throws Exception {
        UUID questionId = UUID.randomUUID();
        UUID certificationId = UUID.randomUUID();
        MockMultipartFile data =
                new MockMultipartFile(
                        "data",
                        "",
                        MediaType.APPLICATION_JSON_VALUE,
                        ("""
                        {"type":"SINGLE_CHOICE","explanation":"E",
                         "options":[{"label":"A","correct":true}],
                         "contentBlocks":[{"type":"TEXT","text":"Statement"}]}
                        """)
                                .getBytes());
        when(adminContentService.updateQuestion(eq(questionId), any(), isNull()))
                .thenReturn(new QuestionCreatedDto(questionId, certificationId));

        mvc.perform(
                        multipart(HttpMethod.PUT, "/api/admin/questions/{questionId}", questionId)
                                .file(data))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.questionId").value(questionId.toString()));
    }
}
