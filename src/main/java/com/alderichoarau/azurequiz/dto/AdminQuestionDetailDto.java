package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuestionType;
import java.util.List;
import java.util.UUID;

/** Full question detail for the admin edit form — includes which option is correct (via
 * {@link AdminAnswerOptionDto}), unlike anything served to students. */
public record AdminQuestionDetailDto(
        UUID questionId,
        UUID moduleId,
        QuestionType type,
        String explanation,
        List<AdminAnswerOptionDto> options,
        List<ContentBlockDto> contentBlocks) {}
