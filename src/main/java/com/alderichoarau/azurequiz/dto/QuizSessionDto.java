package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuizMode;
import java.util.List;
import java.util.UUID;

public record QuizSessionDto(
        UUID sessionId,
        QuizMode mode,
        UUID certificationId,
        UUID moduleId,
        List<QuestionDto> questions) {}
