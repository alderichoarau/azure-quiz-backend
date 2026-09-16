package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.service.PersonService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class PersonControllerTest {

    @Mock private PersonService personService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new PersonController(personService)).build();
    }

    @Test
    void listPeople_returnsServiceResult() throws Exception {
        UUID id = UUID.randomUUID();
        when(personService.listPeople()).thenReturn(List.of(new PersonDto(id, "Alice")));

        mvc.perform(get("/api/people"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].name").value("Alice"));
    }
}
