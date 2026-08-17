package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.ContentBlockType;
import jakarta.validation.constraints.NotNull;

/**
 * {@code text} is used for {@code TEXT} blocks; {@code imageIndex} (zero-based index into the
 * multipart request's "images" parts) is used for {@code IMAGE} blocks. Cross-field validation
 * (right field populated for the given type) happens in {@code AdminContentService}, not here —
 * simpler than a custom Bean Validation constraint for a two-case rule.
 */
public record CreateContentBlockRequest(
        @NotNull ContentBlockType type, String text, Integer imageIndex) {}
