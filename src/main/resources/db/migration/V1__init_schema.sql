CREATE TABLE certification (
    id          UUID PRIMARY KEY,
    code        VARCHAR(20)  NOT NULL UNIQUE,
    title       VARCHAR(200) NOT NULL,
    description TEXT,
    position    INT          NOT NULL
);

CREATE TABLE module (
    id                UUID PRIMARY KEY,
    certification_id  UUID         NOT NULL REFERENCES certification (id),
    code              VARCHAR(50)  NOT NULL,
    title             VARCHAR(200) NOT NULL,
    description       TEXT,
    position          INT          NOT NULL,
    CONSTRAINT uq_module_certification_code UNIQUE (certification_id, code)
);
CREATE INDEX idx_module_certification_id ON module (certification_id);

CREATE TABLE question (
    id          UUID PRIMARY KEY,
    module_id   UUID         NOT NULL REFERENCES module (id),
    type        VARCHAR(30)  NOT NULL,
    statement   TEXT         NOT NULL,
    explanation TEXT,
    position    INT          NOT NULL,
    active      BOOLEAN      NOT NULL DEFAULT TRUE
);
CREATE INDEX idx_question_module_id ON question (module_id);
CREATE INDEX idx_question_active ON question (active);

CREATE TABLE answer_option (
    id          UUID PRIMARY KEY,
    question_id UUID    NOT NULL REFERENCES question (id) ON DELETE CASCADE,
    label       TEXT    NOT NULL,
    is_correct  BOOLEAN NOT NULL DEFAULT FALSE,
    position    INT     NOT NULL
);
CREATE INDEX idx_answer_option_question_id ON answer_option (question_id);

CREATE TABLE quiz_session (
    id                UUID PRIMARY KEY,
    mode              VARCHAR(20) NOT NULL,
    certification_id  UUID        NOT NULL REFERENCES certification (id),
    module_id         UUID REFERENCES module (id),
    question_count    INT         NOT NULL,
    created_at        TIMESTAMP   NOT NULL DEFAULT now()
);
CREATE INDEX idx_quiz_session_certification_id ON quiz_session (certification_id);

CREATE TABLE quiz_session_question (
    id          UUID PRIMARY KEY,
    session_id  UUID NOT NULL REFERENCES quiz_session (id) ON DELETE CASCADE,
    question_id UUID NOT NULL REFERENCES question (id),
    position    INT  NOT NULL,
    CONSTRAINT uq_session_position UNIQUE (session_id, position)
);
CREATE INDEX idx_qsq_session_id ON quiz_session_question (session_id);

CREATE TABLE quiz_answer (
    id           UUID PRIMARY KEY,
    session_id   UUID      NOT NULL REFERENCES quiz_session (id) ON DELETE CASCADE,
    question_id  UUID      NOT NULL REFERENCES question (id),
    is_correct   BOOLEAN   NOT NULL,
    answered_at  TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT uq_session_question_answer UNIQUE (session_id, question_id)
);
CREATE INDEX idx_quiz_answer_session_id ON quiz_answer (session_id);

CREATE TABLE quiz_answer_selected_option (
    answer_id UUID NOT NULL REFERENCES quiz_answer (id) ON DELETE CASCADE,
    option_id UUID NOT NULL REFERENCES answer_option (id),
    PRIMARY KEY (answer_id, option_id)
);
