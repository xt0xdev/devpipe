# CONTRACT: web

## Purpose
Main Next.js application (App Router). User-facing web interface.

## Public API
- None (this is an app, not a package).

## May depend on
- `@devpipe/db`
- `@devpipe/ui`
- `@devpipe/example-module`

## Must NOT
- Deep-import packages
- Duplicate UI components from `@devpipe/ui`
- Write raw SQL (use Prisma via `@devpipe/db`)

## Events / side effects
- Publishes: none yet
- Consumes: none yet

## Invariants
- All routes require authentication unless explicitly marked public

## Tests required for changes
- [ ] Unit tests for utilities and helpers
- [ ] Smoke tests for critical user flows

## Owners
- Human: Mike Almiroudis
