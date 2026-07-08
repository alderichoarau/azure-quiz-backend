package com.alderichoarau.azurequiz.dto;

import java.util.List;
import java.util.UUID;

public record AnswerResultDto(boolean correct, List<UUID> correctOptionIds, String explanation) {}
