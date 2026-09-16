package com.alderichoarau.azurequiz.repository;

import com.alderichoarau.azurequiz.dto.PersonModuleAnswerStatRow;
import com.alderichoarau.azurequiz.entity.QuizAnswer;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface QuizAnswerRepository extends JpaRepository<QuizAnswer, UUID> {

    Optional<QuizAnswer> findBySessionIdAndQuestionId(UUID sessionId, UUID questionId);

    List<QuizAnswer> findBySessionId(UUID sessionId);

    // Success rate is measured over answered questions only (count(a) = answers actually
    // submitted for that person/module pair) -- module fields are null for EXAM-mode sessions.
    @Query(
            """
            select new com.alderichoarau.azurequiz.dto.PersonModuleAnswerStatRow(
                s.person.id, s.person.name, m.id, m.title,
                count(a), sum(case when a.correct = true then 1L else 0L end))
            from QuizAnswer a
            join a.session s
            left join s.module m
            where s.person is not null
            group by s.person.id, s.person.name, m.id, m.title
            """)
    List<PersonModuleAnswerStatRow> aggregateByPersonAndModule();
}
