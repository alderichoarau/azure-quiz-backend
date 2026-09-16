package com.alderichoarau.azurequiz.dto;

import java.util.List;
import java.util.UUID;

public record PersonStatsDto(
        UUID personId,
        String personName,
        long totalAnswers,
        long correctAnswers,
        double globalSuccessRate,
        List<ModuleSuccessRateDto> byModule) {}
