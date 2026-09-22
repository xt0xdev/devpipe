# CONTRACT: @scope/package-name

## Purpose
One paragraph. What this package owns.

## Public API
- List exports from `src/index.ts` only.
- Breaking change = major version + ADR if cross-cutting.

## May depend on
- `@scope/db`, `@scope/ui`, etc.

## Must NOT
- Import from apps/
- Deep-import other packages
- Touch Prisma schema (unless this IS `@scope/db`)
- Call external HTTP without going through `@scope/http` (example)

## Events / side effects
- Publishes: `billing.invoice.created`
- Consumes: `auth.user.created`

## Invariants
- Example: never charge twice for the same `idempotencyKey`

## Tests required for changes
- [ ] Unit tests for changed exports
- [ ] Contract test if public API or events change
- [ ] Smoke path if used by `apps/web`

## Owners
- Human: Mike
- Default agent role: Builder (scoped)
