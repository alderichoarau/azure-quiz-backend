package com.alderichoarau.azurequiz.repository;

import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import java.util.List;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionContentBlockRepository extends JpaRepository<QuestionContentBlock, UUID> {

    List<QuestionContentBlock> findByQuestionIdOrderByPositionAsc(UUID questionId);
}
