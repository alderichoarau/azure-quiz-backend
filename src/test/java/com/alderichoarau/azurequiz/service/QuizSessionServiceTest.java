package com.alderichoarau.azurequiz.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.assertj.core.api.Assertions.within;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.alderichoarau.azurequiz.dto.AnswerResultDto;
import com.alderichoarau.azurequiz.dto.CreateQuizSessionRequest;
import com.alderichoarau.azurequiz.dto.QuestionDto;
import com.alderichoarau.azurequiz.dto.QuizResultDto;
import com.alderichoarau.azurequiz.dto.QuizSessionDto;
import com.alderichoarau.azurequiz.dto.SubmitAnswerRequest;
import com.alderichoarau.azurequiz.entity.AnswerOption;
import com.alderichoarau.azurequiz.entity.Certification;
import com.alderichoarau.azurequiz.entity.ContentBlockType;
import com.alderichoarau.azurequiz.entity.Person;
import com.alderichoarau.azurequiz.entity.Question;
import com.alderichoarau.azurequiz.entity.QuestionContentBlock;
import com.alderichoarau.azurequiz.entity.QuestionType;
import com.alderichoarau.azurequiz.entity.QuizMode;
import com.alderichoarau.azurequiz.entity.QuizModule;
import com.alderichoarau.azurequiz.entity.QuizAnswer;
import com.alderichoarau.azurequiz.entity.QuizSession;
import com.alderichoarau.azurequiz.entity.QuizSessionQuestion;
import com.alderichoarau.azurequiz.exception.InvalidQuizRequestException;
import com.alderichoarau.azurequiz.exception.ResourceNotFoundException;
import com.alderichoarau.azurequiz.repository.AnswerOptionRepository;
import com.alderichoarau.azurequiz.repository.CertificationRepository;
import com.alderichoarau.azurequiz.repository.PersonRepository;
import com.alderichoarau.azurequiz.repository.QuestionContentBlockRepository;
import com.alderichoarau.azurequiz.repository.QuestionRepository;
import com.alderichoarau.azurequiz.repository.QuizAnswerRepository;
import com.alderichoarau.azurequiz.repository.QuizModuleRepository;
import com.alderichoarau.azurequiz.repository.QuizSessionQuestionRepository;
import com.alderichoarau.azurequiz.repository.QuizSessionRepository;
import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class QuizSessionServiceTest {

    @Mock private CertificationRepository certificationRepository;
    @Mock private QuizModuleRepository moduleRepository;
    @Mock private QuestionRepository questionRepository;
    @Mock private AnswerOptionRepository answerOptionRepository;
    @Mock private QuizSessionRepository quizSessionRepository;
    @Mock private QuizSessionQuestionRepository quizSessionQuestionRepository;
    @Mock private QuizAnswerRepository quizAnswerRepository;
    @Mock private QuestionContentBlockRepository questionContentBlockRepository;
    @Mock private QuizResultExportService quizResultExportService;
    @Mock private PersonRepository personRepository;

    private QuizSessionService service;

    @BeforeEach
    void setUp() {
        service =
                new QuizSessionService(
                        certificationRepository,
                        moduleRepository,
                        questionRepository,
                        answerOptionRepository,
                        quizSessionRepository,
                        quizSessionQuestionRepository,
                        quizAnswerRepository,
                        questionContentBlockRepository,
                        quizResultExportService,
                        personRepository);
    }

    private UUID stubPerson() {
        UUID personId = UUID.randomUUID();
        when(personRepository.findById(personId))
                .thenReturn(Optional.of(Person.builder().id(personId).name("Alice").build()));
        return personId;
    }

    @Test
    void createSession_moduleMode_missingModuleId_throwsInvalidRequest() {
        UUID personId = stubPerson();
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.MODULE, null, null, null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createSession_moduleMode_moduleNotFound_throwsResourceNotFound() {
        UUID personId = stubPerson();
        UUID moduleId = UUID.randomUUID();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.empty());
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.MODULE, null, moduleId, null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void createSession_moduleMode_noActiveQuestions_throwsInvalidRequest() {
        UUID personId = stubPerson();
        UUID moduleId = UUID.randomUUID();
        Certification certification = Certification.builder().id(UUID.randomUUID()).code("AZ-900").build();
        QuizModule module =
                QuizModule.builder().id(moduleId).certification(certification).code("cloud-concepts").build();
        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        when(questionRepository.countByModuleIdAndActiveTrue(moduleId)).thenReturn(0L);
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.MODULE, null, moduleId, null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createSession_examMode_missingCertificationId_throwsInvalidRequest() {
        UUID personId = stubPerson();
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.EXAM, null, null, null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createSession_examMode_noQuestionsAvailable_throwsInvalidRequest() {
        UUID personId = stubPerson();
        UUID certificationId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-900").build();
        when(certificationRepository.findById(certificationId)).thenReturn(Optional.of(certification));
        when(questionRepository.findRandomActiveByCertification(certificationId, 40)).thenReturn(List.of());
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.EXAM, certificationId, null, null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void createSession_personNotFound_throwsResourceNotFound() {
        UUID personId = UUID.randomUUID();
        when(personRepository.findById(personId)).thenReturn(Optional.empty());
        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.MODULE, null, UUID.randomUUID(), null, personId);

        assertThatThrownBy(() -> service.createSession(request))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void submitAnswer_sessionNotFound_throwsResourceNotFound() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.empty());

        assertThatThrownBy(
                        () -> service.submitAnswer(sessionId, questionId, new SubmitAnswerRequest(List.of())))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void submitAnswer_questionNotInSession_throwsInvalidRequest() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        when(quizSessionRepository.findById(sessionId))
                .thenReturn(Optional.of(QuizSession.builder().id(sessionId).build()));
        when(quizSessionQuestionRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.empty());

        assertThatThrownBy(
                        () ->
                                service.submitAnswer(
                                        sessionId, questionId, new SubmitAnswerRequest(List.of(UUID.randomUUID()))))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void submitAnswer_invalidOptionId_throwsInvalidRequest() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        QuizSession session = QuizSession.builder().id(sessionId).build();
        Question question =
                Question.builder().id(questionId).statement("Q").explanation("E").build();
        QuizSessionQuestion sessionQuestion =
                QuizSessionQuestion.builder().session(session).question(question).position(0).build();
        AnswerOption realOption =
                AnswerOption.builder().id(UUID.randomUUID()).question(question).correct(true).build();

        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.of(session));
        when(quizSessionQuestionRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.of(sessionQuestion));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(realOption));

        SubmitAnswerRequest request = new SubmitAnswerRequest(List.of(UUID.randomUUID()));

        assertThatThrownBy(() -> service.submitAnswer(sessionId, questionId, request))
                .isInstanceOf(InvalidQuizRequestException.class);
    }

    @Test
    void submitAnswer_exactCorrectSet_returnsCorrectTrue() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        QuizSession session = QuizSession.builder().id(sessionId).build();
        Question question =
                Question.builder().id(questionId).statement("Q").explanation("Because.").build();
        QuizSessionQuestion sessionQuestion =
                QuizSessionQuestion.builder().session(session).question(question).position(0).build();

        UUID correctId = UUID.randomUUID();
        UUID wrongId = UUID.randomUUID();
        AnswerOption correctOption =
                AnswerOption.builder().id(correctId).question(question).correct(true).build();
        AnswerOption wrongOption =
                AnswerOption.builder().id(wrongId).question(question).correct(false).build();

        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.of(session));
        when(quizSessionQuestionRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.of(sessionQuestion));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(correctOption, wrongOption));
        when(quizAnswerRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.empty());

        AnswerResultDto result =
                service.submitAnswer(sessionId, questionId, new SubmitAnswerRequest(List.of(correctId)));

        assertThat(result.correct()).isTrue();
        assertThat(result.correctOptionIds()).containsExactly(correctId);
        assertThat(result.explanation()).isEqualTo("Because.");
    }

    @Test
    void submitAnswer_wrongSelection_returnsCorrectFalse() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        QuizSession session = QuizSession.builder().id(sessionId).build();
        Question question = Question.builder().id(questionId).statement("Q").build();
        QuizSessionQuestion sessionQuestion =
                QuizSessionQuestion.builder().session(session).question(question).position(0).build();

        UUID correctId = UUID.randomUUID();
        UUID wrongId = UUID.randomUUID();
        AnswerOption correctOption =
                AnswerOption.builder().id(correctId).question(question).correct(true).build();
        AnswerOption wrongOption =
                AnswerOption.builder().id(wrongId).question(question).correct(false).build();

        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.of(session));
        when(quizSessionQuestionRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.of(sessionQuestion));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(correctOption, wrongOption));
        when(quizAnswerRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.empty());

        AnswerResultDto result =
                service.submitAnswer(sessionId, questionId, new SubmitAnswerRequest(List.of(wrongId)));

        assertThat(result.correct()).isFalse();
        assertThat(result.correctOptionIds()).containsExactly(correctId);
    }

    @Test
    void getResult_sessionNotFound_throwsResourceNotFound() {
        UUID sessionId = UUID.randomUUID();
        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> service.getResult(sessionId))
                .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void createSession_moduleMode_capsQuestionCountToAvailableAndReturnsQuestions() {
        UUID personId = stubPerson();
        UUID moduleId = UUID.randomUUID();
        Certification certification = Certification.builder().id(UUID.randomUUID()).code("AZ-900").build();
        QuizModule module =
                QuizModule.builder().id(moduleId).certification(certification).code("cloud-concepts").build();
        Question question =
                Question.builder()
                        .id(UUID.randomUUID())
                        .statement("What is Azure?")
                        .type(QuestionType.SINGLE_CHOICE)
                        .build();
        AnswerOption option =
                AnswerOption.builder().id(UUID.randomUUID()).question(question).label("A cloud").correct(true).build();
        QuestionContentBlock block =
                QuestionContentBlock.builder()
                        .id(UUID.randomUUID())
                        .question(question)
                        .type(ContentBlockType.TEXT)
                        .textContent("intro")
                        .build();

        when(moduleRepository.findById(moduleId)).thenReturn(Optional.of(module));
        when(questionRepository.countByModuleIdAndActiveTrue(moduleId)).thenReturn(5L);
        when(questionRepository.findRandomActiveByModule(moduleId, 3)).thenReturn(List.of(question));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(question.getId()))
                .thenReturn(List.of(option));
        when(questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(question.getId()))
                .thenReturn(List.of(block));

        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.MODULE, null, moduleId, 3, personId);

        QuizSessionDto result = service.createSession(request);

        assertThat(result.mode()).isEqualTo(QuizMode.MODULE);
        assertThat(result.certificationId()).isEqualTo(certification.getId());
        assertThat(result.moduleId()).isEqualTo(moduleId);
        assertThat(result.questions()).hasSize(1);
        QuestionDto questionDto = result.questions().get(0);
        assertThat(questionDto.statement()).isEqualTo("What is Azure?");
        assertThat(questionDto.options()).hasSize(1);
        assertThat(questionDto.contentBlocks()).hasSize(1);
        verify(quizSessionRepository).save(any(QuizSession.class));
        verify(quizSessionQuestionRepository).saveAll(any());
    }

    @Test
    void createSession_examMode_usesRequestedQuestionCountAndNoModule() {
        UUID personId = stubPerson();
        UUID certificationId = UUID.randomUUID();
        Certification certification = Certification.builder().id(certificationId).code("AZ-900").build();
        Question question =
                Question.builder()
                        .id(UUID.randomUUID())
                        .statement("What is Azure?")
                        .type(QuestionType.TRUE_FALSE)
                        .build();

        when(certificationRepository.findById(certificationId)).thenReturn(Optional.of(certification));
        when(questionRepository.findRandomActiveByCertification(certificationId, 10))
                .thenReturn(List.of(question));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(question.getId())).thenReturn(List.of());
        when(questionContentBlockRepository.findByQuestionIdOrderByPositionAsc(question.getId()))
                .thenReturn(List.of());

        CreateQuizSessionRequest request =
                new CreateQuizSessionRequest(QuizMode.EXAM, certificationId, null, 10, personId);

        QuizSessionDto result = service.createSession(request);

        assertThat(result.mode()).isEqualTo(QuizMode.EXAM);
        assertThat(result.certificationId()).isEqualTo(certificationId);
        assertThat(result.moduleId()).isNull();
        assertThat(result.questions()).hasSize(1);
    }

    @Test
    void submitAnswer_existingAnswer_updatesItInPlace() {
        UUID sessionId = UUID.randomUUID();
        UUID questionId = UUID.randomUUID();
        QuizSession session = QuizSession.builder().id(sessionId).build();
        Question question = Question.builder().id(questionId).statement("Q").explanation("E").build();
        QuizSessionQuestion sessionQuestion =
                QuizSessionQuestion.builder().session(session).question(question).position(0).build();

        UUID correctId = UUID.randomUUID();
        AnswerOption correctOption =
                AnswerOption.builder().id(correctId).question(question).correct(true).build();
        QuizAnswer existingAnswer = QuizAnswer.builder().session(session).question(question).build();

        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.of(session));
        when(quizSessionQuestionRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.of(sessionQuestion));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(questionId))
                .thenReturn(List.of(correctOption));
        when(quizAnswerRepository.findBySessionIdAndQuestionId(sessionId, questionId))
                .thenReturn(Optional.of(existingAnswer));

        AnswerResultDto result =
                service.submitAnswer(sessionId, questionId, new SubmitAnswerRequest(List.of(correctId)));

        assertThat(result.correct()).isTrue();
        assertThat(existingAnswer.isCorrect()).isTrue();
        assertThat(existingAnswer.getSelectedOptionIds()).containsExactly(correctId);
        verify(quizAnswerRepository).save(existingAnswer);
    }

    @Test
    void getResult_computesScoreAcrossAnsweredAndUnansweredQuestions() {
        UUID sessionId = UUID.randomUUID();
        QuizSession session = QuizSession.builder().id(sessionId).build();

        Question answeredCorrectly = Question.builder().id(UUID.randomUUID()).statement("Q1").build();
        Question unanswered = Question.builder().id(UUID.randomUUID()).statement("Q2").build();
        QuizSessionQuestion sq1 =
                QuizSessionQuestion.builder().session(session).question(answeredCorrectly).position(0).build();
        QuizSessionQuestion sq2 =
                QuizSessionQuestion.builder().session(session).question(unanswered).position(1).build();

        UUID correctOptionId = UUID.randomUUID();
        AnswerOption correctOption =
                AnswerOption.builder().id(correctOptionId).question(answeredCorrectly).correct(true).build();

        QuizAnswer answer =
                QuizAnswer.builder()
                        .session(session)
                        .question(answeredCorrectly)
                        .selectedOptionIds(new java.util.HashSet<>(List.of(correctOptionId)))
                        .correct(true)
                        .answeredAt(Instant.now())
                        .build();

        when(quizSessionRepository.findById(sessionId)).thenReturn(Optional.of(session));
        when(quizSessionQuestionRepository.findBySessionIdOrderByPositionAsc(sessionId))
                .thenReturn(List.of(sq1, sq2));
        when(quizAnswerRepository.findBySessionId(sessionId)).thenReturn(List.of(answer));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(answeredCorrectly.getId()))
                .thenReturn(List.of(correctOption));
        when(answerOptionRepository.findByQuestionIdOrderByPositionAsc(unanswered.getId())).thenReturn(List.of());

        QuizResultDto result = service.getResult(sessionId);

        assertThat(result.totalQuestions()).isEqualTo(2);
        assertThat(result.answeredCount()).isEqualTo(1);
        assertThat(result.correctCount()).isEqualTo(1);
        assertThat(result.scorePercentage()).isCloseTo(50.0, within(0.01));
        verify(quizResultExportService).export(result);
    }
}
