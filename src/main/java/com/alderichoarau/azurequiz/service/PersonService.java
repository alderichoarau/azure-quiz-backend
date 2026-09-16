package com.alderichoarau.azurequiz.service;

import com.alderichoarau.azurequiz.dto.CreatePersonRequest;
import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.entity.Person;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.PersonRepository;
import java.time.Instant;
import java.util.List;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class PersonService {

    private final PersonRepository personRepository;

    @Transactional(readOnly = true)
    public List<PersonDto> listPeople() {
        return personRepository.findAllByOrderByNameAsc().stream()
                .map(p -> new PersonDto(p.getId(), p.getName()))
                .toList();
    }

    @Transactional
    public PersonDto createPerson(CreatePersonRequest request) {
        String name = request.name().trim();
        if (personRepository.existsByNameIgnoreCase(name)) {
            throw new InvalidQuizRequestException("A person named '" + name + "' already exists");
        }
        Person person = Person.builder().name(name).createdAt(Instant.now()).build();
        personRepository.save(person);
        return new PersonDto(person.getId(), person.getName());
    }

    @Transactional
    public void deletePerson(UUID personId) {
        if (!personRepository.existsById(personId)) {
            throw new ResourceNotFoundException("Person not found: " + personId);
        }
        personRepository.deleteById(personId);
    }
}
