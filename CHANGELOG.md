# Changelog

## [Unreleased] - 2026-07-14

### Fixed
- Fix ast-print-statements issues (ticket-9a0828f4)
- Fix ast-missing-return-type issues (ticket-9a7f2783)
- Fix ruff-print-statements issues (ticket-1935697d)
- Fix smart-return-type issues (ticket-f8662d12)
- Fix string-concat-fstring issues (ticket-0e9c3434)
- Fix ai-boilerplate issues (ticket-047d57d0)
- Fix import-optimization issues (ticket-b933cc71)

## [0.3.0]

### Changed
- **URI Node model** on the Mesh slide (EN/PL/DE): a laptop, VM or container are one object — a **URI Node** (a containerised one is a capsule), not separate things. Surface listings now include `GET /services`; the deploy example uses `--persist` so deployed routes survive a node restart.

## [0.2.0]

### Added
- New slide **Mesh & AI — drive a remote node from natural language**: NL→YAML flow→execute→self-repair, registry-etag surface pinning (`host probe`), `host deploy --merge`, and the `connectors verify` build gate (EN/PL/DE).

## [0.1.0]

### Added
- Initial about.ifuri.com presentation (problem, URI idea, one runtime, multi-language connectors, local-first, ecosystem map). Shared ecobar, brand palette, deploy + CI.
