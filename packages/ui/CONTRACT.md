# CONTRACT: @devpipe/ui

## Purpose
Shared UI components, design tokens, and styling utilities.

## Public API
- Exported components from `src/index.ts`
- Design tokens (colors, spacing, typography)
- Utility functions for styling

## May depend on
- None (this is a presentation layer package)

## Must NOT
- Import from apps/
- Deep-import other packages
- Include business logic
- Make API calls

## Events / side effects
- Publishes: none
- Consumes: none

## Invariants
- All components are headless or accept className override
- Design tokens are single source of truth for styling

## Tests required for changes
- [ ] Component unit tests
- [ ] Visual regression tests for changed components
- [ ] Accessibility tests

## Owners
- Human: Mike Almiroudis
