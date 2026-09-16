package com.alderichoarau.azurequiz.dto;

import java.util.UUID;

/**
 * One (person, module) aggregate row — module fields are null for EXAM-mode sessions, which have
 * no module. Target of a JPQL constructor expression in {@code QuizAnswerRepository}.
 */
public record PersonModuleAnswerStatRow(
        UUID personId, String personName, UUID moduleId, String moduleTitle, Long totalAnswers, Long correctAnswers) {}
