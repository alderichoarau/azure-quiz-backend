package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.CreatePersonRequest;
import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.exception.GlobalExceptionHandler;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.service.PersonService;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class AdminPeopleControllerTest {

    @Mock private PersonService personService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc =
                standaloneSetup(new AdminPeopleController(personService))
                        .setControllerAdvice(new GlobalExceptionHandler())
                        .build();
    }

    @Test
    void createPerson_validRequest_returns201WithBody() throws Exception {
        UUID personId = UUID.randomUUID();
        when(personService.createPerson(new CreatePersonRequest("Alice")))
                .thenReturn(new PersonDto(personId, "Alice"));

        mvc.perform(
                        post("/api/admin/people")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"name\":\"Alice\"}"))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.name").value("Alice"));
    }

    @Test
    void createPerson_blankName_returns400() throws Exception {
        mvc.perform(
                        post("/api/admin/people")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"name\":\"\"}"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void createPerson_duplicateName_returns400WithMessage() throws Exception {
        when(personService.createPerson(new CreatePersonRequest("Alice")))
                .thenThrow(new InvalidQuizRequestException("Person already exists: Alice"));

        mvc.perform(
                        post("/api/admin/people")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content("{\"name\":\"Alice\"}"))
                .andExpect(status().isBadRequest())
                .andExpect(jsonPath("$.detail").value("Person already exists: Alice"));
    }

    @Test
    void deletePerson_existing_returns204() throws Exception {
        UUID personId = UUID.randomUUID();

        mvc.perform(delete("/api/admin/people/{personId}", personId)).andExpect(status().isNoContent());

        verify(personService).deletePerson(personId);
    }

    @Test
    void deletePerson_notFound_returns404() throws Exception {
        UUID personId = UUID.randomUUID();
        doThrow(new ResourceNotFoundException("Person not found: " + personId))
                .when(personService)
                .deletePerson(personId);

        mvc.perform(delete("/api/admin/people/{personId}", personId)).andExpect(status().isNotFound());
    }
}
