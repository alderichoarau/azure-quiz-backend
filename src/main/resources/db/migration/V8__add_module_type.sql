-- Distinguishes regular course modules from official, independent mock exams:
-- mock exam questions must never be mixed with each other or drawn into the
-- random cross-module exam mode - see QuestionRepository.findRandomActiveByCertification.
ALTER TABLE module ADD COLUMN type VARCHAR(20) NOT NULL DEFAULT 'CONTENT';
