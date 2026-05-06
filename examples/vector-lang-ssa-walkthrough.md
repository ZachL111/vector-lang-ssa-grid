# Vector Lang Ssa Grid Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 166 | ship |
| stress | lowering drift | 202 | ship |
| edge | stack depth | 204 | ship |
| recovery | diagnostic reach | 162 | ship |
| stale | IR pressure | 176 | ship |

Start with `edge` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
