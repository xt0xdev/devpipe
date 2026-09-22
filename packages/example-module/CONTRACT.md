# CONTRACT: @scope/example-module

## Purpose
Example package showing the contract shape for a domain module.

## Public API
- `createThing(input: CreateThingInput): Promise<Thing>`
- `getThing(id: string): Promise<Thing | null>`

## May depend on
- `@scope/db`

## Must NOT
- Import from `apps/`
- Deep-import other packages
- Change Prisma schema

## Events / side effects
- Publishes: none yet
- Consumes: none yet

## Invariants
- `id` is opaque; callers do not parse it

## Tests required for changes
- [ ] Unit tests for changed exports
- [ ] Contract test if public API changes
- [ ] Smoke if `apps/web` calls this

## Owners
- Human: Mike
