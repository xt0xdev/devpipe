# devpipe

Contracts-first multi-agent development pipeline for Cursor + Grok Bot.

## Overview

This repository demonstrates a structured workflow for building Node.js/TypeScript/Next.js applications using AI agents with clear contracts and boundaries.

## How it works

**Flow:** Planner → (you approve brief) → Builder → Reviewer → Tester/CI

- **Cursor (Cloud Agents)**: The build floor — agents write code, open PRs, run tests
- **Grok Bot**: Process owner — tracks briefs, drift, and missing contracts
- **GitHub**: Source of truth — CI gates, PR reviews, contract enforcement
- **VPS**: Deploy target (configured later)

## Structure

```
devpipe/
├── agents/          # Agent role definitions (paste into Cursor instructions)
│   ├── planner.md   # Plans changes, defines scope
│   ├── builder.md   # Implements approved briefs
│   ├── reviewer.md  # Reviews PRs for contract compliance
│   └── tester.md    # Validates tests and CI
├── apps/
│   └── web/         # Next.js application (CONTRACT.md required)
├── packages/
│   ├── db/          # Prisma schema + client (CONTRACT.md required)
│   ├── ui/          # Shared components (CONTRACT.md required)
│   └── example-module/  # Domain module example
├── tests/
│   ├── contracts/   # Cross-package API tests
│   └── smoke/       # Fast end-to-end tests
├── docs/
│   ├── ARCHITECTURE.md  # Non-negotiable rules
│   └── adr/         # Architecture decision records
├── templates/       # Boilerplate for new packages
└── ci/
    └── check-contracts.sh  # Enforces CONTRACT.md presence
```

## Quick start

1. **Install dependencies:**
   ```bash
   pnpm install
   ```

2. **Copy agent instructions:**
   - Use `agents/*.md` in Cursor cloud agent / Composer instructions
   - Or `@`-file them when needed

3. **Add CONTRACT.md to every package:**
   - See `templates/CONTRACT.md` for the template
   - Required for apps/* and packages/*

4. **Run checks:**
   ```bash
   pnpm lint
   pnpm typecheck
   pnpm test
   pnpm test:contracts
   pnpm test:smoke
   ```

## Rules

1. Every package under `packages/` or app under `apps/` has a `CONTRACT.md`
2. Cross-package imports only through public exports (`src/index.ts`)
3. Prisma schema lives in `packages/db`
4. Shared UI in `packages/ui`
5. Feature work stays inside allowed paths from the Planner brief
6. No "while we're here" refactors
7. Definition of done: typecheck + lint + tests + contracts + smoke green

## Stack

- **Runtime:** Node.js 22+
- **Language:** TypeScript (strict mode)
- **Framework:** Next.js (App Router)
- **Database:** Prisma + PostgreSQL
- **Package manager:** pnpm + Turborepo

## Contributing

See `docs/ARCHITECTURE.md` for architectural principles and `agents/planner.md` for the workflow entry point.
