-- Purely additive: no existing question is touched. Admin-authored questions (starting with
-- AZ-104) can attach an ordered sequence of text/image blocks; existing questions keep rendering
-- from question.statement exactly as before (see Quiz component's fallback).
CREATE TABLE question_content_block (
    id                  UUID PRIMARY KEY,
    question_id         UUID         NOT NULL REFERENCES question (id) ON DELETE CASCADE,
    position            INT          NOT NULL,
    type                VARCHAR(10)  NOT NULL, -- TEXT | IMAGE
    text_content        TEXT,
    image_blob_name     VARCHAR(300),
    image_content_type  VARCHAR(100)
);
CREATE INDEX idx_content_block_question_id ON question_content_block (question_id);
