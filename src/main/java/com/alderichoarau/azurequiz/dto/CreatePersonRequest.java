package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record CreatePersonRequest(@NotBlank @Size(max = 150) String name) {}
