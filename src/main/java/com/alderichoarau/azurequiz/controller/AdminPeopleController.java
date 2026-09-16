package com.alderichoarau.azurequiz.controller;

import com.alderichoarau.azurequiz.dto.CreatePersonRequest;
import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.service.PersonService;
import jakarta.validation.Valid;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/** Roster management (create/delete). Gated by {@code AdminApiKeyFilter} like the rest of {@code /api/admin/**}. */
@RestController
@RequestMapping("/api/admin/people")
@RequiredArgsConstructor
public class AdminPeopleController {

    private final PersonService personService;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public PersonDto createPerson(@Valid @RequestBody CreatePersonRequest request) {
        return personService.createPerson(request);
    }

    @DeleteMapping("/{personId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deletePerson(@PathVariable UUID personId) {
        personService.deletePerson(personId);
    }
}
