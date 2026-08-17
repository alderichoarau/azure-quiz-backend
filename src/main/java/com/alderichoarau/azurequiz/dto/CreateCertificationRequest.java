package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotBlank;

public record CreateCertificationRequest(
        @NotBlank String code, @NotBlank String title, String description, Integer position) {}
