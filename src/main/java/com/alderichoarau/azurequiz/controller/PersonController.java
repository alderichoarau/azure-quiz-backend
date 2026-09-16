package com.alderichoarau.azurequiz.controller;

import com.alderichoarau.azurequiz.dto.PersonDto;
import com.alderichoarau.azurequiz.service.PersonService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/** Public read of the roster — used by the student-facing "who are you?" selector before starting a quiz. */
@RestController
@RequestMapping("/api/people")
@RequiredArgsConstructor
public class PersonController {

    private final PersonService personService;

    @GetMapping
    public List<PersonDto> listPeople() {
        return personService.listPeople();
    }
}
