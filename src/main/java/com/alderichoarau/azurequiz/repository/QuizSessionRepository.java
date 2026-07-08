package com.alderichoarau.azurequiz.repository;

import com.alderichoarau.azurequiz.entity.QuizSession;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizSessionRepository extends JpaRepository<QuizSession, UUID> {}
