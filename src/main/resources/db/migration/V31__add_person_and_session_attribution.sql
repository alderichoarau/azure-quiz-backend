-- Adds named participants so quiz sessions (previously fully anonymous) can be attributed to a
-- person for per-person success-rate stats. Roster is admin-managed (AdminPeopleController);
-- students pick their name before starting a session. person_id is nullable so pre-existing
-- sessions stay valid, and ON DELETE SET NULL keeps a removed person's session history intact.
CREATE TABLE person (
    id         UUID PRIMARY KEY,
    name       VARCHAR(150) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT now()
);

ALTER TABLE quiz_session ADD COLUMN person_id UUID REFERENCES person (id) ON DELETE SET NULL;
CREATE INDEX idx_quiz_session_person_id ON quiz_session (person_id);
