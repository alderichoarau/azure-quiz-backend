package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuestionType;
import java.util.UUID;

/** One row of the admin's per-module question-management list (edit/delete) — just enough to
 * identify and preview a question, not the full content-block breakdown. */
public record AdminQuestionSummaryDto(UUID questionId, String statement, QuestionType type) {}
