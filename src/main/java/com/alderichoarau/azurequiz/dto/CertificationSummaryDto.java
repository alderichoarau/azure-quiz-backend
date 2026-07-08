package com.alderichoarau.azurequiz.dto;

import java.util.UUID;

public record CertificationSummaryDto(
        UUID id, String code, String title, String description, int position, long moduleCount) {}
