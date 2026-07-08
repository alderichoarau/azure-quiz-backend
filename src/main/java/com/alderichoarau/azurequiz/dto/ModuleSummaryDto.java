package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.ModuleType;
import java.util.UUID;

public record ModuleSummaryDto(
        UUID id,
        String code,
        String title,
        String description,
        int position,
        ModuleType type,
        long questionCount) {}
