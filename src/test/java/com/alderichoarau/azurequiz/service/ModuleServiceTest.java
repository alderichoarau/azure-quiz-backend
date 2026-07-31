package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.ModuleSummaryDto;
import com.alderichoarau.azurequiz.entity.ModuleType;
import com.alderichoarau.azurequiz.entity.QuizModule;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.QuestionRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class ModuleServiceTest {

    @Mock private CertificationRepository certificationRepository;
    @Mock private QuizModuleRepository moduleRepository;
    @Mock private QuestionRepository questionRepository;

    private ModuleService service;

    @BeforeEach
    void setUp() {
        service = new ModuleService(certificationRepository, moduleRepository, questionRepository);
    }

    @Test
    void getModulesByCertification_certificationNotFound_throwsResourceNotFound() {
        UUID certificationId = UUID.randomUUID();
        when(certificationRepository.existsById(certificationId)).thenReturn(false);

        assertThatThrownBy(() -> service.getModulesByCertification(certificationId))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void getModulesByCertification_mapsModulesWithQuestionCounts() {
        UUID certificationId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        QuizModule module =
                QuizModule.builder()
                        .id(moduleId)
                        .code("cloud-concepts")
                        .title("Cloud Concepts")
                        .description(null)
                        .position(1)
                        .type(ModuleType.CONTENT)
                        .build();

        when(certificationRepository.existsById(certificationId)).thenReturn(true);
        when(moduleRepository.findAllByCertificationIdOrderByPositionAsc(certificationId))
                .thenReturn(List.of(module));
        when(questionRepository.countByModuleIdAndActiveTrue(moduleId)).thenReturn(15L);

        List<ModuleSummaryDto> result = service.getModulesByCertification(certificationId);

        assertThat(result).hasSize(1);
        assertThat(result.get(0).id()).isEqualTo(moduleId);
        assertThat(result.get(0).code()).isEqualTo("cloud-concepts");
        assertThat(result.get(0).type()).isEqualTo(ModuleType.CONTENT);
        assertThat(result.get(0).questionCount()).isEqualTo(15L);
    }
}
