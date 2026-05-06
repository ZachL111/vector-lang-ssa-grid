# vector-lang-ssa-grid

`vector-lang-ssa-grid` is a compact Julia repository for compilers, centered on this goal: Create a Julia reference implementation for ssa workflows, centered on event replay, fixture event logs, and golden state snapshots.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Vector Lang Ssa Grid Review Notes

The first comparison I would make is `stack depth` against `diagnostic reach` because it shows where the rule is most opinionated.

## What It Does

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vector-lang-ssa-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `stack depth` and `diagnostic reach`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Julia implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
