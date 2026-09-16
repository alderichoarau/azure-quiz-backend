package com.alderichoarau.azurequiz.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.alderichoarau.azurequiz.entity.ModuleType;
import com.alderichoarau.azurequiz.service.ModuleService;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.web.servlet.MockMvc;

@ExtendWith(MockitoExtension.class)
class ModuleControllerTest {

    @Mock private ModuleService moduleService;

    private MockMvc mvc;

    @BeforeEach
    void setUp() {
        mvc = standaloneSetup(new ModuleController(moduleService)).build();
    }

    @Test
    void getModules_passesCertificationIdAndReturnsServiceResult() throws Exception {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        when(moduleService.getModulesByCertification(certificationId))
                .thenReturn(
                        List.of(
                                new ModuleSummaryDto(
                                        moduleId, "cloud-concepts", "Cloud concepts", "desc", 1, ModuleType.CONTENT, 5)));

        mvc.perform(get("/api/certifications/{certificationId}/modules", certificationId))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].code").value("cloud-concepts"))
                .andExpect(jsonPath("$[0].questionCount").value(5));
    }
}
