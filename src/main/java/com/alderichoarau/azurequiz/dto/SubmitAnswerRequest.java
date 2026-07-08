package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotEmpty;
import java.util.List;
import java.util.UUID;

public record SubmitAnswerRequest(@NotEmpty List<UUID> selectedOptionIds) {}
