package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.QuestionType;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

public record CreateQuestionRequest(
        @NotNull QuestionType type,
        String explanation,
        @NotEmpty List<CreateAnswerOptionRequest> options,
        @NotEmpty List<CreateContentBlockRequest> contentBlocks) {}
