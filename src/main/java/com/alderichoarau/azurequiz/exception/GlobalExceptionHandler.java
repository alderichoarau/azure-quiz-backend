package com.alderichoarau.azurequiz.exception;

import java.util.stream.Collectors;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ProblemDetail;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MultipartException;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ProblemDetail handleNotFound(ResourceNotFoundException ex) {
        log.warn("Resource not found: {}", ex.getMessage());
        return ProblemDetail.forStatusAndDetail(HttpStatus.NOT_FOUND, ex.getMessage());
    }

    @ExceptionHandler(InvalidQuizRequestException.class)
    public ProblemDetail handleInvalidRequest(InvalidQuizRequestException ex) {
        log.warn("Invalid quiz request: {}", ex.getMessage());
        return ProblemDetail.forStatusAndDetail(HttpStatus.BAD_REQUEST, ex.getMessage());
    }

    // Malformed/truncated multipart bodies (a corrupt boundary, a stream that stops mid-part)
    // aren't covered by Spring's own DefaultHandlerExceptionResolver -- an uncaught
    // MultipartException fell through to a raw 500, found by the DAST scan (dast.yml) fuzzing
    // the admin question-authoring endpoints' "images" part. A malformed request body is a
    // client error, not a server one.
    @ExceptionHandler(MultipartException.class)
    public ProblemDetail handleMultipart(MultipartException ex) {
        log.warn("Malformed multipart request: {}", ex.getMessage());
        return ProblemDetail.forStatusAndDetail(HttpStatus.BAD_REQUEST, "Malformed request body");
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ProblemDetail handleValidation(MethodArgumentNotValidException ex) {
        String detail =
                ex.getBindingResult().getFieldErrors().stream()
                        .map(error -> error.getField() + ": " + error.getDefaultMessage())
                        .collect(Collectors.joining(", "));
        log.warn("Validation failed: {}", detail);
        return ProblemDetail.forStatusAndDetail(HttpStatus.BAD_REQUEST, detail);
    }
}
