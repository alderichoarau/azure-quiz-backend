package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.ModuleType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CreateModuleRequest(
        @NotBlank String code,
        @NotBlank String title,
        String description,
        Integer position,
        @NotNull ModuleType type) {}
