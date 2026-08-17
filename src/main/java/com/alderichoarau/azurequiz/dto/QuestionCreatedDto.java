package com.alderichoarau.azurequiz.dto;

import java.util.UUID;

public record QuestionCreatedDto(UUID questionId, UUID certificationId) {}
