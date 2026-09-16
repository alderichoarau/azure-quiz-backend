package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.CreatePersonRequest;
import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.entity.Person;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.PersonRepository;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class PersonServiceTest {

    @Mock private PersonRepository personRepository;

    private PersonService service;

    @BeforeEach
    void setUp() {
        service = new PersonService(personRepository);
    }

    @Test
    void listPeople_mapsEntitiesToDtosInOrder() {
        Person alice = Person.builder().id(UUID.randomUUID()).name("Alice").build();
        Person bob = Person.builder().id(UUID.randomUUID()).name("Bob").build();
        when(personRepository.findAllByOrderByNameAsc()).thenReturn(List.of(alice, bob));

        List<PersonDto> result = service.listPeople();

        assertThat(result).hasSize(2);
        assertThat(result.get(0).name()).isEqualTo("Alice");
        assertThat(result.get(1).name()).isEqualTo("Bob");
    }

    @Test
    void createPerson_trimsNameAndSaves() {
        when(personRepository.existsByNameIgnoreCase("Alice")).thenReturn(false);

        PersonDto result = service.createPerson(new CreatePersonRequest("  Alice  "));

        assertThat(result.name()).isEqualTo("Alice");
    }

    @Test
    void createPerson_duplicateName_throwsInvalidRequest() {
        when(personRepository.existsByNameIgnoreCase("Alice")).thenReturn(true);

        assertThatThrownBy(() -> service.createPerson(new CreatePersonRequest("Alice")))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void deletePerson_notFound_throwsResourceNotFound() {
        UUID personId = UUID.randomUUID();
        when(personRepository.existsById(personId)).thenReturn(false);

        assertThatThrownBy(() -> service.deletePerson(personId))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void deletePerson_existing_deletesById() {
        UUID personId = UUID.randomUUID();
        when(personRepository.existsById(personId)).thenReturn(true);

        service.deletePerson(personId);

        verify(personRepository).deleteById(personId);
    }
}
