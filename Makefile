.PHONY: up down shell run test fmt vet tidy

EXEC = docker compose exec app

up:
	docker compose up -d --build

down:
	docker compose down

shell:
	$(EXEC) sh

run:
	$(EXEC) go run .

test:
	$(EXEC) go test ./...

fmt:
	$(EXEC) go fmt ./...

vet:
	$(EXEC) go vet ./...

tidy:
	$(EXEC) go mod tidy
