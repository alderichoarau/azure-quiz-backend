.DEFAULT_GOAL := help
.PHONY: help up down ps logs run test coverage verify package clean-docker

help: ## Show this list of targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*## "}; {printf "  \033[36m%-14s\033[0m %s\n", $$1, $$2}'

up: ## Start Postgres, Redis, Azurite (docker-compose.yml)
	docker compose up -d

down: ## Stop the local Postgres/Redis/Azurite containers
	docker compose down

ps: ## Show status of the local containers
	docker compose ps

logs: ## Follow logs from the local containers
	docker compose logs -f

run: ## Run the backend locally (http://localhost:8080), against `make up`
	./mvnw spring-boot:run

test: ## Run the test suite
	./mvnw test

coverage: ## Run tests and print the Jacoco coverage report path
	./mvnw test
	@echo "Report: target/site/jacoco/index.html"

verify: ## Full build: compile, test, package (same as CI's build-and-test)
	./mvnw verify

package: ## Build the runnable jar (target/*.jar), skipping tests
	./mvnw package -DskipTests

clean-docker: ## Stop containers AND delete their volumes -- wipes local Postgres data
	docker compose down -v
