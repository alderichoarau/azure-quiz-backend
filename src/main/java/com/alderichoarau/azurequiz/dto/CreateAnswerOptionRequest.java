package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotBlank;

public record CreateAnswerOptionRequest(@NotBlank String label, boolean correct) {}
