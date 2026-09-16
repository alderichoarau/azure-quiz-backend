package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.PersonStatsDto;
import com.alderichoarau.azurequiz.service.AdminStatsService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class AdminStatsControllerTest {

    @Mock private AdminStatsService adminStatsService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new AdminStatsController(adminStatsService)).build();
    }

    @Test
    void getPeopleStats_returnsServiceResult() throws Exception {
        UUID personId = UUID.randomUUID();
        when(adminStatsService.getPeopleStats())
                .thenReturn(List.of(new PersonStatsDto(personId, "Alice", 10, 8, 80.0, List.of())));

        mvc.perform(get("/api/admin/stats/people"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].personName").value("Alice"))
                .andExpect(jsonPath("$[0].globalSuccessRate").value(80.0));
    }
}
