# Smoke tests

Fast end-to-end paths that must stay green on every PR:
- health / ready
- sign-in happy path (test env)
- one core read + one core write per critical domain

Keep under ~2–3 minutes. Full browser suites can be nightly.
