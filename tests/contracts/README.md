# Contract tests

These tests lock the *shared surfaces* between packages.

Examples:
- `billing` still exports `createInvoice` with the same input shape
- `auth.user.created` payload still matches what `billing` consumes
- Prisma models used by public APIs still have required fields

When a Builder PR breaks an old module, the failure should show up here or in smoke — not days later.
