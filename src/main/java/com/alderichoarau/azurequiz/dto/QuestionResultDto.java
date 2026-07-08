package com.alderichoarau.azurequiz.dto;

import java.util.List;
import java.util.UUID;

public record QuestionResultDto(
        UUID questionId,
        String statement,
        boolean answered,
        boolean correct,
        List<UUID> selectedOptionIds,
        List<UUID> correctOptionIds) {}
