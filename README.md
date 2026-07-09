# azure-quiz-backend

Spring Boot REST API for the Microsoft Azure certifications revision app (AZ-900 to start, other certifications
like AZ-104 can be added later with no schema change — see "Data model" below).

## Last analysis
[![GitHub - Sonar Cloud Analysis](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/sonar.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/sonar.yml)
[![GitHub - Build all](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/build-all.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/build-all.yml)

## Stack

- Java 17, Spring Boot 3.5.x, Maven
- Spring Web, Spring Data JPA, PostgreSQL, Flyway, Bean Validation, Lombok, Actuator
- springdoc-openapi (Swagger UI)
- Tests: JUnit 5, Mockito, AssertJ

## Running locally

Prerequisites: JDK 17, a local PostgreSQL instance (database `quizz`, user/password `quizz` — see the
`default` profile in `application.yml`, adjust if needed).

```bash
./mvnw spring-boot:run    # starts the API on http://localhost:8080
```

Flyway applies the migrations (`src/main/resources/db/migration`) on startup, including the real content for
AZ-900 modules 1 to 6 (`V2` to `V7`, 45 questions per module: 30 standard questions + 15 scenario questions).
The 30 standard questions per module come from the trainer's answer key; the 15 scenario questions have no
written answer key (the trainer corrects them live) — their answers were determined from AZ-900 fundamentals
and deserve a quick review before use in training. One inconsistency was found and fixed in the trainer's
answer key: Module 1 Q8 marked "SaaS" as the answer while the explanation clearly describes PaaS — the
objectively correct answer (PaaS) was imported.

Six official mock exams (`V9` to `V14`, AZ900_Test_A to F, 50 questions each with answers/explanations
included in the same source document) are imported as modules of type `MOCK_EXAM` (`type` column on
`module`, migration `V8`). They stay strictly independent from each other and from course modules: the
random exam mode (`EXAM`) only draws from modules of type `CONTENT` (see
`QuestionRepository.findRandomActiveByCertification`).

Swagger UI: http://localhost:8080/swagger-ui.html

## Tests

```bash
./mvnw test
```

## Environment variables (production)

The `default` profile (active locally) defines a localhost datasource in `application.yml`. In production,
set these environment variables (e.g. Azure App Service) — they directly override the corresponding Spring
properties, no extra profile needs activating:

| Variable | Description |
|---|---|
| `SPRING_DATASOURCE_URL` | PostgreSQL JDBC URL, e.g. `jdbc:postgresql://<host>:5432/azurequiz` |
| `SPRING_DATASOURCE_USERNAME` | PostgreSQL user |
| `SPRING_DATASOURCE_PASSWORD` | PostgreSQL password |
| `APP_CORS_ALLOWED_ORIGINS` | Allowed origin(s), e.g. the frontend Static Web App URL |

## Data model

`certification` (e.g. AZ-900, AZ-104...) → `module` → `question` → `answer_option`. A quiz session
(`quiz_session`) is tied to a certification and, in review mode, to a specific module; in exam mode,
questions are drawn randomly from all active modules of the chosen certification.

Adding a new certification requires no schema migration: just insert a row into `certification` and its
associated modules/questions (a dedicated Flyway migration, generated from the supplied content).

## API contract

- `GET /api/certifications` — list of available certifications
- `GET /api/certifications/{certificationId}/modules` — modules of a certification, with active question count and `type` (`CONTENT` or `MOCK_EXAM`)
- `POST /api/quiz-sessions` — creates a session
  - `MODULE` mode: `{ "mode": "MODULE", "moduleId": "..." , "questionCount": 10 }` (`questionCount` optional, otherwise all active questions in the module)
  - `EXAM` mode: `{ "mode": "EXAM", "certificationId": "...", "questionCount": 40 }` (`questionCount` optional, default 40)
  - the response contains the questions and their options **without** indicating the correct answer
- `POST /api/quiz-sessions/{sessionId}/questions/{questionId}/answer` — submits an answer, returns whether it's correct + the correct options + the explanation
- `GET /api/quiz-sessions/{sessionId}/result` — final aggregated score for the session

## Out of scope for this repo

- Provisioning Azure infrastructure (App Service, Static Web App, PostgreSQL Flexible Server).
- CI/CD deployment workflow to Azure.
- Importing the real question content (supplied separately, converted into Flyway migrations).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Copyright (c) 2026 Alderic Hoarau. All rights reserved. See [LICENSE](LICENSE).
