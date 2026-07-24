package com.alderichoarau.azurequiz.service;

import com.alderichoarau.azurequiz.dto.CertificationSummaryDto;
import com.alderichoarau.azurequiz.entity.Certification;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CertificationService {

    private final CertificationRepository certificationRepository;
    private final QuizModuleRepository moduleRepository;

    // Redis-backed cache (see AzureQuizBackendApplication's @EnableCaching and
    // application.yml's spring.data.redis config): the certification list changes rarely
    // (a new certification added every so often) but is read on every app load, making it
    // the simplest, highest-value candidate to cache in this app. No explicit eviction —
    // acceptable for this TP; a real deployment would evict/refresh on certification writes.
    @Cacheable("certifications")
    public List<CertificationSummaryDto> getAllCertifications() {
        log.debug("Fetching all certifications");
        List<CertificationSummaryDto> certifications =
                certificationRepository.findAllByOrderByPositionAsc().stream()
                        .map(this::toSummaryDto)
                        .toList();
        log.debug("Found {} certifications", certifications.size());
        return certifications;
    }

    private CertificationSummaryDto toSummaryDto(Certification certification) {
        long moduleCount =
                moduleRepository.findAllByCertificationIdOrderByPositionAsc(certification.getId()).size();
        return new CertificationSummaryDto(
                certification.getId(),
                certification.getCode(),
                certification.getTitle(),
                certification.getDescription(),
                certification.getPosition(),
                moduleCount);
    }
}
