package com.alderichoarau.azurequiz.exception;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ProblemDetail;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;

class GlobalExceptionHandlerTest {

    private final GlobalExceptionHandler handler = new GlobalExceptionHandler();

    @Test
    void handleNotFound_returns404WithMessage() {
        ProblemDetail result = handler.handleNotFound(new ResourceNotFoundException("Quiz session not found"));

        assertThat(result.getStatus()).isEqualTo(HttpStatus.NOT_FOUND.value());
        assertThat(result.getDetail()).isEqualTo("Quiz session not found");
    }

    @Test
    void handleInvalidRequest_returns400WithMessage() {
        ProblemDetail result =
                handler.handleInvalidRequest(new InvalidQuizRequestException("moduleId is required"));

        assertThat(result.getStatus()).isEqualTo(HttpStatus.BAD_REQUEST.value());
        assertThat(result.getDetail()).isEqualTo("moduleId is required");
    }

    @Test
    void handleValidation_joinsFieldErrorsIntoDetail() {
        FieldError fieldError1 = new FieldError("request", "moduleId", "must not be null");
        FieldError fieldError2 = new FieldError("request", "questionCount", "must be positive");
        BindingResult bindingResult = mock(BindingResult.class);
        when(bindingResult.getFieldErrors()).thenReturn(List.of(fieldError1, fieldError2));
        MethodArgumentNotValidException ex = mock(MethodArgumentNotValidException.class);
        when(ex.getBindingResult()).thenReturn(bindingResult);

        ProblemDetail result = handler.handleValidation(ex);

        assertThat(result.getStatus()).isEqualTo(HttpStatus.BAD_REQUEST.value());
        assertThat(result.getDetail())
                .isEqualTo("moduleId: must not be null, questionCount: must be positive");
    }
}
