-- Mirrors question.active: modules are soft-deleted (hidden from students, kept in the DB) rather
-- than hard-deleted, since question/quiz_session rows reference module_id without ON DELETE
-- CASCADE — a hard delete would break the history of any quiz already taken from this module.
ALTER TABLE module ADD COLUMN active BOOLEAN NOT NULL DEFAULT true;
