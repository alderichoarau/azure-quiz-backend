-- V2 and V9-V14 seeded a few description fields in French. Never edit already-applied
-- migrations (it breaks Flyway checksum validation) - fix the data here instead.

UPDATE certification
SET description = 'Fundamental cloud computing and Azure services concepts.'
WHERE code = 'AZ-900';

UPDATE module
SET description = 'Official complete AZ-900 mock exam, 50 questions - to be taken in one sitting.'
WHERE type = 'MOCK_EXAM';
