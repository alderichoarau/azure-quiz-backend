package com.alderichoarau.azurequiz.controller;

import com.alderichoarau.azurequiz.dto.PersonStatsDto;
import com.alderichoarau.azurequiz.service.AdminStatsService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/admin/stats")
@RequiredArgsConstructor
public class AdminStatsController {

    private final AdminStatsService adminStatsService;

    @GetMapping("/people")
    public List<PersonStatsDto> getPeopleStats() {
        return adminStatsService.getPeopleStats();
    }
}
