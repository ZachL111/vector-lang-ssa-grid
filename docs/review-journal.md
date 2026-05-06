# Review Journal

The review surface for `vector-lang-ssa-grid` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 166, lane `ship`
- `stress`: `lowering drift`, score 202, lane `ship`
- `edge`: `stack depth`, score 204, lane `ship`
- `recovery`: `diagnostic reach`, score 162, lane `ship`
- `stale`: `IR pressure`, score 176, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
