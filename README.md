# azure-quiz-backend

Spring Boot REST API for the Microsoft Azure certifications revision app (AZ-900, AZ-104 in progress — new
certifications need no schema change, see "Data model" below).

![Java](https://img.shields.io/badge/Java-21-ED8B00?logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-4.1.0-6DB33F?logo=springboot&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?logo=apachemaven&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?logo=postgresql&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?logo=redis&logoColor=white)

## Last analysis
[![CI · Build all](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/build-all.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/build-all.yml)
[![GitHub - Sonar Cloud Analysis](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/sonar.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/sonar.yml)
[![Deploy · App Service](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/asp-deploy.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/asp-deploy.yml)
[![Deploy · AKS](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/aks-deploy.yml/badge.svg)](https://github.com/alderichoarau/azure-quiz-backend/actions/workflows/aks-deploy.yml)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=alderichoarau_azure-quiz-backend&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=alderichoarau_azure-quiz-backend)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=alderichoarau_azure-quiz-backend&metric=bugs)](https://sonarcloud.io/summary/new_code?id=alderichoarau_azure-quiz-backend)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=alderichoarau_azure-quiz-backend&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=alderichoarau_azure-quiz-backend)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=alderichoarau_azure-quiz-backend&metric=coverage)](https://sonarcloud.io/summary/new_code?id=alderichoarau_azure-quiz-backend)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=alderichoarau_azure-quiz-backend&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=alderichoarau_azure-quiz-backend)

## Stack

- Java 21, Spring Boot 4.1.x, Maven
- Spring Web, Spring Data JPA, PostgreSQL, Flyway, Bean Validation, Lombok, Actuator
- Spring Data Redis (cache — see "Running locally" below)
- Spring Cloud Azure Storage Blob (quiz result export — see "Running locally" below)
- springdoc-openapi (Swagger UI)
- Tests: JUnit 5, Mockito, AssertJ

## Running locally

Prerequisites: JDK 21, Docker (Desktop or Engine) running.

```bash
./mvnw spring-boot:run    # starts the API on http://localhost:8080
```

That's it — a plain `./mvnw spring-boot:run`, or hitting "Run" on `AzureQuizBackendApplication` in
your IDE, is enough on its own. The `spring-boot-docker-compose` dependency (pom.xml) detects
`docker-compose.yml` at the project root and automatically starts Postgres + Redis + Azurite (a
local Azure Blob Storage emulator) for you before the app context loads, then stops them when the
app stops — no manual `docker compose up -d` step. It's marked `optional`, so it never ships in the
production jar deployed to Azure App Service; this convenience is dev-only.

If you'd rather manage the containers yourself (e.g. keep them running across multiple app restarts
instead of stopping them every time), that still works exactly as before:

```bash
docker compose up -d      # starts Postgres + Redis + Azurite (see docker-compose.yml)
./mvnw spring-boot:run
```

No other setup is required: `app.security.api-key` (see "Environment variables" below) defaults to empty,
so the `X-Api-Key` check is disabled locally, and CORS already allows `http://localhost:4200` (the Angular
dev server's default port).

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

`docker-compose up -d` also starts a local Redis (no auth, plaintext) backing
`CertificationService.getAllCertifications()` and `ModuleService.getModulesByCertification()`, both
`@Cacheable` (see `CacheConfig` for why values are JSON-serialized rather than the JDK-serialization
default). Entries expire after 30 minutes; there's no explicit eviction on writes, since the underlying
data (certifications/modules) only ever changes via a new Flyway migration, not through the running app.

Every call to `GET /api/quiz-sessions/{sessionId}/result` also exports that result as a JSON blob
(`QuizResultExportService`), downloadable again through `GET /api/quiz-sessions/{sessionId}/result/export`
— the simplest concrete use of the Storage Account provisioned for this TP. Locally this goes to Azurite;
in prod, to the `java-uploads-<owner>` container (Terraform's `storage-java.tf`), authenticated via this
Web App's managed identity, no account key involved either way (`shared_access_key_enabled = false` on
the account). A Storage outage never breaks the quiz itself — the export failing is only logged, not
thrown; Postgres stays the source of truth for results.

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
| `REDIS_HOSTNAME` | Redis host, e.g. Azure Managed Redis's hostname |
| `REDIS_PORT` | Redis port. Defaults to `6379` (docker-compose) locally; Azure Managed Redis exposes a different port, see the infra repo's `redis.tf` |
| `REDIS_PASSWORD` | Redis access key. Empty locally (docker-compose's Redis has no auth) |
| `REDIS_SSL_ENABLED` | `true` in prod (Azure Managed Redis requires TLS), `false` locally |
| `BACKEND_API_KEY` | Shared secret the frontend must send as `X-Api-Key` (see `ApiKeyFilter`). Left unset locally — the check is skipped. In prod it's injected from Key Vault (see `app-service-java.tf` / `keyvault.tf` in the infra repo). |
| `ADMIN_API_KEY` | Separate secret required as `X-Admin-Key` on `/api/admin/**` only (see `AdminApiKeyFilter` and "Content authoring" below). Deliberately distinct from `BACKEND_API_KEY`, which is shipped inside the public frontend bundle and can't also gate writes. Left unset locally — the check is skipped, same convention as `BACKEND_API_KEY`. |
| `STORAGE_ACCOUNT_NAME` | Storage Account name. Authenticated via this Web App's managed identity (no key) — see `SPRING_PROFILES_ACTIVE` below for why |
| `STORAGE_CONTAINER_NAME` | Blob container for quiz result exports, e.g. `java-uploads-<owner>` |
| `QUESTION_IMAGES_CONTAINER_NAME` | Separate blob container for admin-uploaded question images (see "Content authoring"), on the same Storage Account. Kept apart from `STORAGE_CONTAINER_NAME` so the two can be migrated/backed up independently. |
| `SPRING_PROFILES_ACTIVE` | Set to `prod` by Terraform. Deactivates the `default` profile's local-only settings (localhost datasource, Azurite connection string) — without it, Blob Storage would try to reach a local Azurite that doesn't exist in Azure |

## Data model

`certification` (e.g. AZ-900, AZ-104...) → `module` → `question` → `answer_option`. A `question` also has
zero or more ordered `question_content_block` rows (`TEXT` or `IMAGE`) for questions authored with mixed
text/image content (see "Content authoring" below); `question.statement` stays the source of truth for the
570 legacy AZ-900 questions imported before content blocks existed, and doubles as a plain-text fallback
(derived from the first text block) for any question created since. A quiz session (`quiz_session`) is tied
to a certification and, in review mode, to a specific module; in exam mode, questions are drawn randomly
from all active modules of the chosen certification.

`module` and `question` both carry an `active` flag: deleting either through the admin UI/API sets this to
`false` rather than removing the row, since `answer_option`/`quiz_session_question`/`quiz_answer` reference
`question_id` (and `question`/`quiz_session` reference `module_id`) without `ON DELETE CASCADE` — a real
delete would break the history of any quiz already taken. Deleting a module cascades the same soft-delete to
its own questions. Every read path (student-facing listings, random exam draws, question counts) filters on
`active = true`, so deleted content simply stops appearing.

Adding a new certification requires no schema migration: either author it directly through the admin UI
(`/admin` in the frontend, or the admin API below), or — for the original AZ-900 content, imported before
that UI existed — a dedicated Flyway migration generated from the supplied content (`V2`-`V15`).

## API contract

Student-facing (public, gated only by the shared `X-Api-Key` — see `ApiKeyFilter`):

- `GET /api/certifications` — list of available certifications
- `GET /api/certifications/{certificationId}/modules` — modules of a certification, with active question count and `type` (`CONTENT` or `MOCK_EXAM`)
- `POST /api/quiz-sessions` — creates a session
  - `MODULE` mode: `{ "mode": "MODULE", "moduleId": "..." , "questionCount": 10 }` (`questionCount` optional, otherwise all active questions in the module)
  - `EXAM` mode: `{ "mode": "EXAM", "certificationId": "...", "questionCount": 40 }` (`questionCount` optional, default 40)
  - the response contains the questions and their options **without** indicating the correct answer
- `POST /api/quiz-sessions/{sessionId}/questions/{questionId}/answer` — submits an answer, returns whether it's correct + the correct options + the explanation
- `GET /api/quiz-sessions/{sessionId}/result` — final aggregated score for the session; also exports it as a JSON blob (see "Running locally")
- `GET /api/quiz-sessions/{sessionId}/result/export` — downloads that exported blob (404 if `result` was never called for this session)
- `GET /api/images/{blockId}` — streams an image content block's bytes (student-facing, since it's part of normal quiz-taking — see "Content authoring")

Admin-only (gated by `X-Admin-Key` in addition to `X-Api-Key` — see "Content authoring"):

- `POST /api/admin/certifications` — create a certification
- `POST /api/admin/certifications/{certificationId}/modules`, `PUT`/`DELETE .../modules/{moduleId}` — create/update/soft-delete a module
- `GET /api/admin/modules/{moduleId}/questions` — list a module's active questions (id + statement + type), for the admin's management view
- `POST /api/admin/modules/{moduleId}/questions` (multipart) — create a question (JSON `data` part + optional image file parts)
- `GET /api/admin/questions/{questionId}` — full detail for the edit form, **including which option is correct** (never returned by any student-facing endpoint)
- `PUT /api/admin/questions/{questionId}` (multipart, same shape as create) — replace a question's type/explanation/options/content blocks wholesale; every image block is re-uploaded fresh (even unchanged ones — the caller always resends the bytes), and the block(s) it replaces are deleted from Blob Storage
- `DELETE /api/admin/questions/{questionId}` — soft-delete (see "Data model")

## Content authoring

Certifications/modules/questions can be authored two ways, both going through the admin API above:

- **The in-app admin UI** (`/admin` in the frontend) — the intended path for anything with images, since it
  handles the multipart upload and gives a live preview. Gated by a `X-Admin-Key` prompt kept in
  `sessionStorage` only (never shipped in the build, unlike the public `X-Api-Key`).
- **`scripts/import_az104_review_questions.py`** — a standalone, dependency-free script (stdlib only; reads
  `.docx` directly via `zipfile`/`ElementTree` since neither `pandoc` nor `python-docx` is assumed to be
  installed) that bulk-imports paired "Questions"/"AnswerKey" `.docx` documents through the same admin API.
  Used for the AZ-104 review-question sets (Compute, Identities & Governance, Storage, Virtual Networks —
  345 questions total); **not** used for image-heavy content like mock exams, which go through the admin UI
  instead. Run `--dry-run` first — it parses, cross-validates each question against its answer key, and
  reports without calling the API. See the script's own module docstring for the full design rationale,
  in particular: **it deliberately reshuffles every question's option order before import.** The source
  `.docx` files put the correct answer at a heavily skewed or literally fixed position (e.g. the Compute set
  has the correct answer as option A in 75 out of 75 questions; option D is never once correct across any of
  the four sets) — importing as-is would let a student ace the quiz by guessing position instead of knowing
  the material.

Question images live in a second Blob Storage container (`QUESTION_IMAGES_CONTAINER_NAME`, see "Environment
variables"), separate from the quiz-results-export container — so the two can be backed up/migrated to a new
environment independently (copy the Postgres dump + copy this container's blobs, blob names unchanged).

## Deploying

Two independent tracks, both `workflow_dispatch` with a `nonprod`/`prod` choice — pick whichever this
learner's infrastructure uses (see
[azure-infra-terraform](https://github.com/alderichoarau/azure-infra-terraform)), not both against the same
secrets.

### App Service

`.github/workflows/asp-deploy.yml` builds the jar and deploys it to the Java App Service provisioned by the
infra repo. Nothing is hardcoded: the target App Service is looked up by tag (`owner` + `environment` +
`component=quiz-backend`) at deploy time via Azure OIDC login, since its name embeds the learner's owner id.

### AKS

`.github/workflows/aks-deploy.yml` builds the same image, pushes it to ACR, and `helm upgrade`s it onto the
shared AKS cluster instead. Its Ingress gets a real Let's Encrypt cert (see the infra repo's
`scripts/setup-cert-manager.sh`) rather than a self-signed one.

### Releasing

Run `release-prepare.yml` (`workflow_dispatch`, input `tag_name`, e.g. `v1.1.0`) — it bumps `pom.xml`'s
`<version>` (via `versions-maven-plugin`, stripping the tag's leading `v`) and opens a PR. Squash-merging it
yourself when ready (`release-push.yml`) tags the release, creates the GitHub release, and deploys the tag to
**nonprod** on both tracks above.

## Out of scope for this repo

- Provisioning Azure infrastructure (App Service, Static Web App, PostgreSQL Flexible Server) — see
  [azure-infra-terraform](https://github.com/alderichoarau/azure-infra-terraform).
- Sourcing question content itself (supplied separately) — see "Content authoring" above for how it's
  imported once supplied, whether by hand through `/admin` or via `scripts/import_az104_review_questions.py`.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Copyright (c) 2026 Alderic Hoarau. All rights reserved. See [LICENSE](LICENSE).
