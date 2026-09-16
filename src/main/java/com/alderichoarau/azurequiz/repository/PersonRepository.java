package com.alderichoarau.azurequiz.repository;

import com.alderichoarau.azurequiz.entity.Person;
import java.util.List;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonRepository extends JpaRepository<Person, UUID> {

    boolean existsByNameIgnoreCase(String name);

    List<Person> findAllByOrderByNameAsc();
}
