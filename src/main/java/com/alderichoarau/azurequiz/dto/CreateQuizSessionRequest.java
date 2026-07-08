package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuizMode;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import java.util.UUID;

public record CreateQuizSessionRequest(
        @NotNull QuizMode mode,
        UUID certificationId,
        UUID moduleId,
        @Positive Integer questionCount) {}
