# CONTRACT: @devpipe/hello

## Purpose
Dress-rehearsal workspace package that owns a single pure greeting export. It is not a domain module, data layer, or UI package.

## Public API
- `hello(): string` from `src/index.ts` only — returns `"hello"`
- Breaking change = major version + ADR if cross-cutting.

## May depend on
- None

## Must NOT
- Import from apps/
- Deep-import other packages
- Touch Prisma schema or emit raw SQL
- Include shared UI or design tokens
- Include business-domain logic
- Call external HTTP (`@scope/http` does not exist — do not add it)

## Events / side effects
- Publishes: none
- Consumes: none

## Invariants
- `hello` is pure and deterministic
- No IO, no Prisma, no HTTP

## Tests required for changes
- [ ] Unit tests for changed exports
- [ ] Contract test if public API or events change
- [ ] Smoke path if used by `apps/web`

## Owners
- Human: Mike Almiroudis
- Default agent role: Builder (scoped)
