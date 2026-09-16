package com.alderichoarau.azurequiz.dto;

import java.util.UUID;

/** {@code moduleId} is null for the aggregate of a person's EXAM-mode sessions. */
public record ModuleSuccessRateDto(
        UUID moduleId, String moduleTitle, long totalAnswers, long correctAnswers, double successRate) {}
