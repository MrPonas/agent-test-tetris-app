# Claude Code Instructions

Claude Code should follow `AGENTS.md` as the canonical repository contract.

## Working style

- Explore before editing.
- Plan before coding when the task is not trivial.
- Keep edits small and focused.
- Use the task file as the source of scope.
- Run validation scripts before declaring work complete.
- Do not commit or push unless the human explicitly asks.

## Recommended flow

1. Read `AGENTS.md`.
2. Read the current task from `.ai-factory/tasks/`.
3. Inspect only the files needed for the task.
4. Produce a short implementation plan.
5. Implement the smallest viable change.
6. Run `.ai-factory/scripts/validate-fast.sh`.
7. Report results and risks.

## Approval boundaries

Stop and ask before auth, secrets, database migrations, infrastructure, production deployment, destructive commands, or broad refactors.
