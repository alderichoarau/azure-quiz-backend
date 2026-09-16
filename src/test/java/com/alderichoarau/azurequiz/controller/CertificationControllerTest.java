package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.service.CertificationService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class CertificationControllerTest {

    @Mock private CertificationService certificationService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new CertificationController(certificationService)).build();
    }

    @Test
    void getCertifications_returnsServiceResult() throws Exception {
        UUID id = UUID.randomUUID();
        when(certificationService.getAllCertifications())
                .thenReturn(List.of(new CertificationSummaryDto(id, "AZ-900", "Azure Fundamentals", "desc", 1, 3)));

        mvc.perform(get("/api/certifications"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$[0].code").value("AZ-900"))
                .andExpect(jsonPath("$[0].moduleCount").value(3));
    }
}
