package com.alderichoarau.azurequiz.dto;

import java.util.List;
import java.util.UUID;

public record QuizResultDto(
        UUID sessionId,
        int totalQuestions,
        int answeredCount,
        int correctCount,
        double scorePercentage,
        List<QuestionResultDto> details) {}
