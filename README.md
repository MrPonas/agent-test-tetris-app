# agent-test-tetris-app

Lightweight Tetris-style web app scaffold built for AI-assisted workflow testing.

## Stack

- Vite
- React
- TypeScript
- Vitest

## Getting started

Install dependencies:

```bash
npm install
```

Start the app locally:

```bash
npm run dev
```

The initial screen renders a basic Tetris board placeholder (10x20 grid).

## Build and test

Type-check:

```bash
npm run typecheck
```

Run tests:

```bash
npm test
```

Build production assets:

```bash
npm run build
```

## Validation scripts

Run fast validation:

```bash
.ai-factory/scripts/validate-fast.sh
```

Run full validation:

```bash
.ai-factory/scripts/validate-full.sh
```

## Workflow notes

- Follow the rules in `AGENTS.md`.
- Use `.ai-factory/tasks/` as scope control for agent implementations.
- Keep changes small and task-bounded.
