# CONTRACT: @devpipe/db

## Purpose
Prisma schema and generated client. Single source of truth for database schema.

## Public API
- `PrismaClient` instance
- Generated types from Prisma schema
- Migration tooling

## May depend on
- None (this is the data layer foundation)

## Must NOT
- Import from apps/
- Deep-import other packages
- Allow raw SQL in calling packages (unless explicitly exported helpers)

## Events / side effects
- Publishes: none yet
- Consumes: none yet

## Invariants
- Migrations are expand → migrate → contract (backward compatible first)
- Schema changes require ADR for cross-cutting impact

## Tests required for changes
- [ ] Migration tests (up/down)
- [ ] Schema validation tests
- [ ] Contract tests if client types change

## Owners
- Human: Mike Almiroudis
