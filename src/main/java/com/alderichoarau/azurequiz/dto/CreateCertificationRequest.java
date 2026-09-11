package com.alderichoarau.azurequiz.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record CreateCertificationRequest(
        // Sizes match V1__init_schema.sql's column limits (code VARCHAR(20), title VARCHAR(200))
        // -- without them an over-long value passed @NotBlank but failed at the DB as an
        // uncaught DataIntegrityViolationException (500 instead of 400), found by dast.yml.
        @NotBlank @Size(max = 20) String code,
        @NotBlank @Size(max = 200) String title,
        String description,
        Integer position) {}
