package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.within;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.ModuleSuccessRateDto;
import com.alderichoarau.azurequiz.dto.PersonModuleAnswerStatRow;
import com.alderichoarau.azurequiz.dto.PersonStatsDto;
import com.alderichoarau.azurequiz.entity.Person;
import com.alderichoarau.azurequiz.repository.PersonRepository;
import com.alderichoarau.azurequiz.repository.QuizAnswerRepository;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class AdminStatsServiceTest {

    @Mock private PersonRepository personRepository;
    @Mock private QuizAnswerRepository quizAnswerRepository;

    private AdminStatsService service;

    @BeforeEach
    void setUp() {
        service = new AdminStatsService(personRepository, quizAnswerRepository);
    }

    @Test
    void getPeopleStats_aggregatesByPersonAndModule_andComputesGlobalRate() {
        UUID aliceId = UUID.randomUUID();
        UUID moduleId = UUID.randomUUID();
        Person alice = Person.builder().id(aliceId).name("Alice").build();
        when(personRepository.findAllByOrderByNameAsc()).thenReturn(List.of(alice));
        when(quizAnswerRepository.aggregateByPersonAndModule())
                .thenReturn(
                        List.of(
                                new PersonModuleAnswerStatRow(
                                        aliceId, "Alice", moduleId, "Cloud concepts", 4L, 3L),
                                new PersonModuleAnswerStatRow(aliceId, "Alice", null, null, 2L, 1L)));

        List<PersonStatsDto> result = service.getPeopleStats();

        assertThat(result).hasSize(1);
        PersonStatsDto alicesStats = result.get(0);
        assertThat(alicesStats.personName()).isEqualTo("Alice");
        assertThat(alicesStats.totalAnswers()).isEqualTo(6);
        assertThat(alicesStats.correctAnswers()).isEqualTo(4);
        assertThat(alicesStats.globalSuccessRate()).isCloseTo(66.67, within(0.01));

        List<ModuleSuccessRateDto> byModule = alicesStats.byModule();
        assertThat(byModule).hasSize(2);
        assertThat(byModule)
                .anySatisfy(
                        m -> {
                            assertThat(m.moduleTitle()).isEqualTo("Cloud concepts");
                            assertThat(m.successRate()).isCloseTo(75.0, within(0.01));
                        });
        assertThat(byModule)
                .anySatisfy(
                        m -> {
                            assertThat(m.moduleId()).isNull();
                            assertThat(m.moduleTitle()).isEqualTo("Examens");
                            assertThat(m.successRate()).isCloseTo(50.0, within(0.01));
                        });
    }

    @Test
    void getPeopleStats_personWithNoAnswers_returnsZeroedStats() {
        UUID bobId = UUID.randomUUID();
        Person bob = Person.builder().id(bobId).name("Bob").build();
        when(personRepository.findAllByOrderByNameAsc()).thenReturn(List.of(bob));
        when(quizAnswerRepository.aggregateByPersonAndModule()).thenReturn(List.of());

        List<PersonStatsDto> result = service.getPeopleStats();

        assertThat(result).hasSize(1);
        assertThat(result.get(0).personName()).isEqualTo("Bob");
        assertThat(result.get(0).totalAnswers()).isZero();
        assertThat(result.get(0).globalSuccessRate()).isZero();
        assertThat(result.get(0).byModule()).isEmpty();
    }

    @Test
    void getPeopleStats_noPeople_returnsEmptyList() {
        when(personRepository.findAllByOrderByNameAsc()).thenReturn(List.of());

        List<PersonStatsDto> result = service.getPeopleStats();

        assertThat(result).isEmpty();
    }
}
