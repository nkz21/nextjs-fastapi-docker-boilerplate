.PHONY: dev prod down logs migrate shell-backend shell-db ssl-init

## ── DEV ──────────────────────────────────────────────────────────────
dev:
	docker compose up --build

dev-detach:
	docker compose up -d --build

## ── PROD ─────────────────────────────────────────────────────────────
prod:
	docker compose -f docker-compose.prod.yml up -d --build

prod-pull:
	docker compose -f docker-compose.prod.yml pull

prod-restart:
	docker compose -f docker-compose.prod.yml restart

## ── DATABASE ─────────────────────────────────────────────────────────
migrate:
	docker compose exec backend alembic upgrade head

migrate-down:
	docker compose exec backend alembic downgrade -1

migrate-history:
	docker compose exec backend alembic history

## ── LOGS & SHELL ─────────────────────────────────────────────────────
logs:
	docker compose logs -f

logs-backend:
	docker compose logs -f backend

logs-frontend:
	docker compose logs -f frontend

shell-backend:
	docker compose exec backend bash

shell-db:
	docker compose exec db psql -U $${POSTGRES_USER} $${POSTGRES_DB}

## ── SSL (production only) ────────────────────────────────────────────
ssl-init:
	docker compose -f docker-compose.prod.yml run --rm certbot certonly \
		--webroot --webroot-path /var/www/certbot \
		-d $${DOMAIN} --email $${CERTBOT_EMAIL} --agree-tos --no-eff-email

## ── CLEAN ────────────────────────────────────────────────────────────
down:
	docker compose down

down-prod:
	docker compose -f docker-compose.prod.yml down

clean:
	docker compose down -v --remove-orphans

prune:
	docker system prune -af --volumes
