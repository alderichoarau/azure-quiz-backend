package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.AnswerResultDto;
import com.alderichoarau.azurequiz.dto.QuizResultDto;
import com.alderichoarau.azurequiz.dto.QuizSessionDto;
import com.alderichoarau.azurequiz.entity.QuizMode;
import com.alderichoarau.azurequiz.exception.GlobalExceptionHandler;
import com.alderichoarau.azurequiz.service.QuizResultExportService;
import com.alderichoarau.azurequiz.service.QuizSessionService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class QuizSessionControllerTest {

    @Mock private QuizSessionService quizSessionService;
    @Mock private QuizResultExportService quizResultExportService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc =
                standaloneSetup(new QuizSessionController(quizSessionService, quizResultExportService))
                        .setControllerAdvice(new GlobalExceptionHandler())
                        .build();
    }

    @Test
    void createSession_validRequest_returns201WithBody() throws Exception {
        UUID sessionId = UUID.randomUUID();
        UUID personId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        when(quizSessionService.createSession(
                        new com.alderichoarau.azurequiz.dto.CreateQuizSessionRequest(
                                QuizMode.MODULE, null, moduleId, null, personId)))
                .thenReturn(new QuizSessionDto(sessionId, QuizMode.MODULE, UUID.randomUUID(), moduleId, List.of()));

        mvc.perform(
                        post("/api/quiz-sessions")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(
                                        """
                                        {"mode":"MODULE","moduleId":"%s","personId":"%s"}
                                        """
                                                .formatted(moduleId, personId)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.sessionId").value(sessionId.toString()));
    }

    @Test
    void createSession_missingPersonId_returns400() throws Exception {
        mvc.perform(
                        post("/api/quiz-sessions")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"mode\":\"EXAM\"}"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void submitAnswer_validRequest_returnsResult() throws Exception {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        UUID optionId = UUID.randomUUID();
        when(quizSessionService.submitAnswer(
                        org.mockito.ArgumentMatchers.eq(sessionId),
                        org.mockito.ArgumentMatchers.eq(questionId),
                        org.mockito.ArgumentMatchers.any()))
                .thenReturn(new AnswerResultDto(true, List.of(optionId), "explanation"));

        mvc.perform(
                        post("/api/quiz-sessions/{sessionId}/questions/{questionId}/answer", sessionId, questionId)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"selectedOptionIds\":[\"%s\"]}".formatted(optionId)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.correct").value(true))
                .andExpect(jsonPath("$.explanation").value("explanation"));
    }

    @Test
    void submitAnswer_emptySelection_returns400() throws Exception {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();

        mvc.perform(
                        post("/api/quiz-sessions/{sessionId}/questions/{questionId}/answer", sessionId, questionId)
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"selectedOptionIds\":[]}"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void getResult_returnsServiceResult() throws Exception {
        UUID sessionId = UUID.randomUUID();
        when(quizSessionService.getResult(sessionId))
                .thenReturn(new QuizResultDto(sessionId, 10, 8, 6, 60.0, List.of()));

        mvc.perform(get("/api/quiz-sessions/{sessionId}/result", sessionId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.correctCount").value(6));
    }

    @Test
    void exportResult_returnsJsonAttachment() throws Exception {
        UUID sessionId = UUID.randomUUID();
        byte[] json = "{\"sessionId\":\"%s\"}".formatted(sessionId).getBytes();
        when(quizResultExportService.download(sessionId)).thenReturn(json);

        mvc.perform(get("/api/quiz-sessions/{sessionId}/result/export", sessionId))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(
                        header()
                                .string(
                                        "Content-Disposition",
                                        "attachment; filename=\"quiz-result-" + sessionId + ".json\""))
                .andExpect(content().bytes(json));
    }
}
