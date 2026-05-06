# vector-lang-ssa-grid

`vector-lang-ssa-grid` treats compilers as a local verification problem. The Julia implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Vector Lang Ssa Grid Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## What This Is For

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## Useful Pieces

- Models source form with deterministic scoring and explicit review decisions.
- Uses fixture data to keep intermediate state changes visible in code review.
- Includes extended examples for bytecode output, including `surge` and `degraded`.
- Documents evaluation checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Architecture Notes

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Julia project keeps the model in a small module with assertions in a local test script.

## Project Layout

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Tooling

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Case Study

`baseline` is the first example I would inspect because it lands on the `review` path with a score of 130. The broader file also keeps `degraded` at 1 and `surge` at 207, which gives the model a useful low-to-high spread.

## Scope

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Expansion Ideas

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more compilers fixture that focuses on a malformed or borderline input.
