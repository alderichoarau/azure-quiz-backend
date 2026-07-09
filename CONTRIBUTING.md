# Contributing

This is a private/proprietary project (see [LICENSE](LICENSE)). Contributions are only accepted from
authorized collaborators.

## Setup

Prerequisites: JDK 17, a local PostgreSQL instance (see [README](README.md#running-locally)).

```bash
./mvnw spring-boot:run    # run the API locally
./mvnw test                # run the test suite
```

## Workflow

1. Create a branch from `main` (`feat/...`, `fix/...`, `chore/...`).
2. Keep commits scoped and use a conventional prefix (`feat:`, `fix:`, `chore:`, `test:`, `docs:`), matching
   the existing history.
3. Add or update tests for any behavior change (JUnit 5 / Mockito / AssertJ).
4. Open a pull request against `main`. CI runs the build, tests, dependency review and SonarCloud analysis
   (see `.github/workflows`) — make sure they pass before requesting review.

## Database migrations

Schema changes go through Flyway (`src/main/resources/db/migration`). Add a new versioned migration file
rather than editing an existing one that has already been merged.