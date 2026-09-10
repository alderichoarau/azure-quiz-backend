package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record CreateCertificationRequest(
        // Sizes match the certification table's column limits (V1__init_schema.sql:
        // code VARCHAR(20), title VARCHAR(200)). Without these, an over-long value passed
        // @NotBlank fine but failed at the DB as an uncaught DataIntegrityViolationException,
        // surfacing as a raw 500 instead of a clean 400 -- found by the DAST scan
        // (dast.yml), which sent overly long field values as part of its active checks.
        @NotBlank @Size(max = 20) String code,
        @NotBlank @Size(max = 200) String title,
        String description,
        Integer position) {}
