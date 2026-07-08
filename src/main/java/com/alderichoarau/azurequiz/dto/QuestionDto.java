package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuestionType;
import java.util.List;
import java.util.UUID;

public record QuestionDto(
        UUID questionId, String statement, QuestionType type, List<AnswerOptionDto> options) {}
