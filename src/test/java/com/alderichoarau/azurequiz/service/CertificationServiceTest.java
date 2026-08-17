package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.entity.Certification;
import com.alderichoarau.azurequiz.entity.QuizModule;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class CertificationServiceTest {

    @Mock private CertificationRepository certificationRepository;
    @Mock private QuizModuleRepository moduleRepository;

    private CertificationService service;

    @BeforeEach
    void setUp() {
        service = new CertificationService(certificationRepository, moduleRepository);
    }

    @Test
    void getAllCertifications_mapsEntitiesToSummaryDtosInOrder() {
        UUID az900Id = UUID.randomUUID();
        UUID az104Id = UUID.randomUUID();
        Certification az900 =
                Certification.builder()
                        .id(az900Id)
                        .code("AZ-900")
                        .title("Azure Fundamentals")
                        .description(null)
                        .position(1)
                        .build();
        Certification az104 =
                Certification.builder()
                        .id(az104Id)
                        .code("AZ-104")
                        .title("Azure Administrator")
                        .description("Advanced")
                        .position(2)
                        .build();

        when(certificationRepository.findAllByOrderByPositionAsc()).thenReturn(List.of(az900, az104));
        when(moduleRepository.findAllByCertificationIdAndActiveTrueOrderByPositionAsc(az900Id))
                .thenReturn(List.of(QuizModule.builder().id(UUID.randomUUID()).build()));
        when(moduleRepository.findAllByCertificationIdAndActiveTrueOrderByPositionAsc(az104Id))
                .thenReturn(List.of());

        List<CertificationSummaryDto> result = service.getAllCertifications();

        assertThat(result).hasSize(2);
        assertThat(result.get(0).id()).isEqualTo(az900Id);
        assertThat(result.get(0).code()).isEqualTo("AZ-900");
        assertThat(result.get(0).moduleCount()).isEqualTo(1);
        assertThat(result.get(1).id()).isEqualTo(az104Id);
        assertThat(result.get(1).moduleCount()).isEqualTo(0);
    }

    @Test
    void getAllCertifications_noCertifications_returnsEmptyList() {
        when(certificationRepository.findAllByOrderByPositionAsc()).thenReturn(List.of());

        List<CertificationSummaryDto> result = service.getAllCertifications();

        assertThat(result).isEmpty();
    }
}
