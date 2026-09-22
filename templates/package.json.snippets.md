# Root package.json scripts (drop into monorepo root)

```json
{
  "scripts": {
    "lint": "turbo run lint",
    "typecheck": "turbo run typecheck",
    "test": "turbo run test",
    "test:contracts": "vitest run tests/contracts",
    "test:smoke": "vitest run tests/smoke",
    "dev": "turbo run dev --filter=web"
  }
}
```

Suggested layout:
- `apps/web` — Next.js
- `packages/db` — Prisma schema + client
- `packages/ui` — shared UI
- `packages/<domain>` — domain modules with CONTRACT.md
- `packages/rust-*` or separate crate workspace if needed
- `tools/python-*` — scrapers; still get a CONTRACT.md
