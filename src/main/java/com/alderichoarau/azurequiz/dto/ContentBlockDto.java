package com.alderichoarau.azurequiz.dto;

import com.alderichoarau.azurequiz.entity.ContentBlockType;
import java.util.UUID;

public record ContentBlockDto(UUID id, ContentBlockType type, String text) {}
