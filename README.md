# 🚀 Next.js 14 + FastAPI + PostgreSQL + Docker Boilerplate

![Next.js](https://img.shields.io/badge/Next.js-14-black?logo=next.js) ![FastAPI](https://img.shields.io/badge/FastAPI-0.110-009688?logo=fastapi) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?logo=postgresql) ![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker) ![License](https://img.shields.io/badge/License-MIT-green)

> **Free starter kit** — skip the boilerplate setup and ship your SaaS in hours, not days.

---

## ✨ Why this template?

- **Zero config** — clone, copy `.env.example`, run `docker compose up` and you're live
- **Full-stack typed** — Next.js 14 App Router + FastAPI with shared TypeScript/Pydantic types
- **Production-minded** — JWT auth, CORS, DB migrations with Alembic all pre-configured

---

## 📦 What's included

| Feature | Free (this repo) | Pro (39€) |
|---|:---:|:---:|
| Next.js 14 App Router | ✅ | ✅ |
| FastAPI backend | ✅ | ✅ |
| PostgreSQL + SQLModel | ✅ | ✅ |
| JWT Authentication | ✅ | ✅ |
| Docker Compose (dev) | ✅ | ✅ |
| Redis queue | ❌ | ✅ |
| Nginx + SSL (Certbot) | ❌ | ✅ |
| `docker-compose.prod.yml` | ❌ | ✅ |
| Grafana + Prometheus monitoring | ❌ | ✅ |
| Alembic migrations pre-configured | ❌ | ✅ |
| Makefile (`make dev`, `make prod`) | ❌ | ✅ |
| Priority email support | ❌ | ✅ |

👉 **[Get the Pro version — 39€](https://devtoolsnks.lemonsqueezy.com/buy/1389671)**

---

## 🗂️ Project structure

```
nextjs-fastapi-docker-boilerplate/
├── frontend/          # Next.js 14 App Router
│   ├── app/
│   ├── components/
│   └── lib/api.ts     # Typed API client → FastAPI
├── backend/           # FastAPI
│   ├── app/
│   │   ├── routers/
│   │   ├── models/    # SQLModel (Pydantic + SQLAlchemy)
│   │   └── core/      # JWT Auth + Settings
│   └── requirements.txt
├── docker-compose.yml
├── .env.example
└── README.md
```

---

## ⚡ Quick start

```bash
# 1. Clone
git clone https://github.com/nkz21/nextjs-fastapi-docker-boilerplate.git
cd nextjs-fastapi-docker-boilerplate

# 2. Configure
cp .env.example .env

# 3. Run
docker compose up --build
```

**That's it.** Frontend on `http://localhost:3000`, API on `http://localhost:8000/docs`.

---

## 🛠️ Stack

| Layer | Technology |
|---|---|
| Frontend | Next.js 14, TypeScript, Tailwind CSS |
| Backend | FastAPI, Python 3.12, SQLModel |
| Database | PostgreSQL 16 |
| Auth | JWT (python-jose) |
| Containerization | Docker, Docker Compose |

---

## 🔒 Want production-ready?

The **Pro version** adds everything you need to deploy confidently:
- Nginx reverse proxy + automatic SSL via Certbot
- Redis for background tasks and caching
- Grafana + Prometheus monitoring dashboard
- Ready-to-use `docker-compose.prod.yml`
- Makefile with `make dev`, `make prod`, `make migrate`

👉 **[Buy Pro — 39€](https://devtoolsnks.lemonsqueezy.com/buy/1389671)**

---

## 📄 License

MIT — free for personal and commercial use.
