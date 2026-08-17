package com.alderichoarau.azurequiz.dto;

import java.util.UUID;

/** Unlike the student-facing {@link AnswerOptionDto}, this exposes {@code correct} — only ever
 * returned from admin-gated endpoints (see AdminApiKeyFilter), never from the public quiz API. */
public record AdminAnswerOptionDto(UUID id, String label, boolean correct) {}
