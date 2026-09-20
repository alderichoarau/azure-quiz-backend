# Changelog

All notable changes to azure-quiz-backend are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
generated from the commit history between each tagged release.

## [2.2.0] - 2026-09-18

### Added

- Move to java 25
- Improve composite workflow
- Add GH token
- Add Dependabot substitute for alderichoarau/gha-actions

### Fixed

- Release-push.yml deploys to prod on merge, not nonprod — release process is the prod gate

## [2.0.0] - 2026-09-16

### Fixed

- Add more unit test
- Allow release-push.yml to deploy an existing tag to prod via workflow_dispatch

## [1.8.0] - 2026-09-16

### Added

- Refactor environment in workflow
- Add approve to workflow release-push.yml

## [1.7.0] - 2026-09-13

### Added

- Update workflow name
- Add AZ-104 exam question
- Upodate comments
- Add SAST/SCA/secrets/container/DAST security scanning workflows

### Changed

- Add DevSecOps synthesis and TP instructions

### Fixed

- Return 400 instead of 500 on malformed input, add security headers (found by dast.yml)
- Harden pod securityContext (readOnlyRootFilesystem, non-root, no priv escalation)
- Bump managed Tomcat to 11.0.25, fixes 3 critical CVEs (found by sca.yml)

## [1.6.0] - 2026-08-28

### Added

- Add AZ-104 examn test and add screen in order to import exam

## [1.3.0] - 2026-08-06

- No user-facing changes (internal/chore only).

## [1.2.0] - 2026-08-06

- No user-facing changes (internal/chore only).

## [1.1.0] - 2026-07-31

### Added

- Spring boot 4 migration
- Add some unit test

## [1.0.0] - 2026-07-31

### Added

- Enable Let's Encrypt TLS on AKS ingress via cert-manager
- Rename workflow
- Add config for AKS
- Implement storage for result service
- Implement redis
- Update workflow for deployment
- Add workflow for deployment
- Run on managed service azure ok

### Changed

- Complete README.md
- Update README.md

### Fixed

- --kubelogin-version pinned
- Tolerate 403 on createIfNotExists with container-scoped SAS (aks profile)
- Pin numeric UID 1001 for runAsNonRoot
- Fix cache bug
- Fix local bug
