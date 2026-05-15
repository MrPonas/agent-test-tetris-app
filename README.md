# agent-test-tetris-app

A small test repository for building a Tetris-style web app while refining an AI-assisted development workflow.

## Current purpose

This repo is intentionally starting with AI factory scaffolding before app code. The goal is to test a controlled loop:

1. Write a small task.
2. Approve the task.
3. Let an agent implement only that task.
4. Run validation.
5. Review the diff.
6. Merge after human approval.

## Important files

- `AGENTS.md` — canonical rules for all coding agents.
- `CLAUDE.md` — Claude Code-specific instructions that point back to `AGENTS.md`.
- `docs/product/PROJECT-BRIEF.md` — current product and workflow brief.
- `docs/prd/PRD-TEMPLATE.md` — PRD template.
- `docs/adr/ADR-TEMPLATE.md` — architecture decision template.
- `.ai-factory/tasks/TASK-TEMPLATE.yaml` — reusable task template.
- `.ai-factory/tasks/TASK-001-scaffold-tetris-app.yaml` — first draft implementation task.
- `.ai-factory/agents/` — planner, coder, reviewer, QA, and security prompts.
- `.ai-factory/scripts/` — validation and security wrapper scripts.

## Validation

After cloning, make scripts executable once:

```bash
chmod +x .ai-factory/scripts/*.sh
```

Run fast validation:

```bash
.ai-factory/scripts/validate-fast.sh
```

Run full validation:

```bash
.ai-factory/scripts/validate-full.sh
```

## Next step

Use `.ai-factory/tasks/TASK-001-scaffold-tetris-app.yaml` to scaffold the first Vite + React + TypeScript version of the Tetris app.
