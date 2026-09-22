# Architecture (non-negotiables)

## Stack
- Primary: Node.js, TypeScript, Next.js (App Router unless noted)
- Data: Prisma + PostgreSQL
- Occasional: Rust crates for hot paths, Python packages for scrapers/tools
- Package manager: pnpm workspaces + Turborepo

## Rules
1. Every package under `packages/` or app under `apps/` has a `CONTRACT.md`. No contract → no PR.
2. Cross-package imports only through public exports (`src/index.ts` or package `exports`). No deep imports.
3. Prisma schema lives in `packages/db`. Other packages consume generated client only. No raw SQL in app code unless the contract allows it.
4. Shared UI in `packages/ui`. Apps do not duplicate design tokens.
5. Feature work stays inside allowed paths from the Planner brief. Contract changes are their own PR.
6. Agents do not "while we're here" refactor. Drift goes to a new ticket.
7. Definition of done: typecheck + lint + package tests + affected contract tests + smoke green.

## Blast radius
- Prefer feature flags for risky behavior.
- DB migrations are expand → migrate → contract (backward compatible first).
