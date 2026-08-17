package com.alderichoarau.azurequiz.repository;

import com.alderichoarau.azurequiz.entity.QuizModule;
import java.util.List;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizModuleRepository extends JpaRepository<QuizModule, UUID> {

    List<QuizModule> findAllByCertificationIdOrderByPositionAsc(UUID certificationId);

    // Used by the student-facing listing (ModuleService) — soft-deleted modules stay in the DB
    // but must never appear here.
    List<QuizModule> findAllByCertificationIdAndActiveTrueOrderByPositionAsc(UUID certificationId);

    boolean existsByCertificationIdAndCode(UUID certificationId, String code);

    // Excludes the module being edited from the uniqueness check, so keeping the same code on
    // update doesn't falsely conflict with itself.
    boolean existsByCertificationIdAndCodeAndIdNot(UUID certificationId, String code, UUID id);
}
