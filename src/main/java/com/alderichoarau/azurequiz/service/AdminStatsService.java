package com.alderichoarau.azurequiz.service;

import com.alderichoarau.azurequiz.dto.ModuleSuccessRateDto;
import com.alderichoarau.azurequiz.dto.PersonModuleAnswerStatRow;
import com.alderichoarau.azurequiz.dto.PersonStatsDto;
import com.alderichoarau.azurequiz.entity.Person;
import com.alderichoarau.azurequiz.repository.PersonRepository;
import com.alderichoarau.azurequiz.repository.QuizAnswerRepository;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class AdminStatsService {

    private static final String EXAM_MODULE_LABEL = "Examens";

    private final PersonRepository personRepository;
    private final QuizAnswerRepository quizAnswerRepository;

    // Not cached: unlike certifications/modules (rarely change), this changes on every answer
    // submitted, and this repo has no cache-eviction wiring for admin reads (see
    // CertificationService/ModuleService's own no-eviction comment) -- caching would go stale.
    @Transactional(readOnly = true)
    public List<PersonStatsDto> getPeopleStats() {
        List<Person> people = personRepository.findAllByOrderByNameAsc();
        Map<UUID, List<PersonModuleAnswerStatRow>> rowsByPerson =
                quizAnswerRepository.aggregateByPersonAndModule().stream()
                        .collect(Collectors.groupingBy(PersonModuleAnswerStatRow::personId));

        return people.stream()
                .map(p -> toPersonStatsDto(p, rowsByPerson.getOrDefault(p.getId(), List.of())))
                .toList();
    }

    private PersonStatsDto toPersonStatsDto(Person person, List<PersonModuleAnswerStatRow> rows) {
        List<ModuleSuccessRateDto> byModule =
                rows.stream()
                        .map(
                                r ->
                                        new ModuleSuccessRateDto(
                                                r.moduleId(),
                                                r.moduleId() == null ? EXAM_MODULE_LABEL : r.moduleTitle(),
                                                r.totalAnswers(),
                                                r.correctAnswers(),
                                                successRate(r.correctAnswers(), r.totalAnswers())))
                        .sorted(Comparator.comparing(ModuleSuccessRateDto::moduleTitle))
                        .toList();

        long totalAnswers = rows.stream().mapToLong(PersonModuleAnswerStatRow::totalAnswers).sum();
        long correctAnswers = rows.stream().mapToLong(PersonModuleAnswerStatRow::correctAnswers).sum();

        return new PersonStatsDto(
                person.getId(),
                person.getName(),
                totalAnswers,
                correctAnswers,
                successRate(correctAnswers, totalAnswers),
                byModule);
    }

    private double successRate(long correct, long total) {
        return total == 0 ? 0.0 : (correct * 100.0) / total;
    }
}
