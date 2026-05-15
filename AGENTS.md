# Agent Operating Rules

This repository supports AI-assisted development. These rules are the canonical project contract for Copilot, Claude Code, Codex, Aider, OpenHands, or any other coding agent.

## Core workflow

1. Read this file, the current task, and relevant project docs before editing.
2. Work on exactly one approved task at a time.
3. Do not widen scope without asking for human approval.
4. Prefer the smallest working change that satisfies the acceptance criteria.
5. Only edit files listed in the task's `files_allowed` section unless the task explicitly allows broader edits.
6. Run validation before finishing.
7. Report changed files, commands run, validation result, and open risks.
8. Do not commit, push, merge, deploy, rotate secrets, or change repository settings unless explicitly instructed.

## Human approval required

Ask for approval before starting or continuing if the change touches any of these areas:

- Authentication or authorization
- Secrets, credentials, environment variables, keys, certificates, or tokens
- Database schema, migrations, destructive data operations, or retention rules
- Billing, payments, legal, compliance, or audit behaviour
- Infrastructure, CI/CD, deployment, DNS, networking, or production configuration
- External API permissions or third-party integrations with side effects
- Broad refactors outside the approved task scope

## Validation vocabulary

Agents should use the repository wrapper scripts instead of inventing commands:

```bash
.ai-factory/scripts/validate-fast.sh
.ai-factory/scripts/validate-full.sh
.ai-factory/scripts/security.sh
```

If a command cannot run because the project is not scaffolded yet, report that clearly and explain what is missing.

## Expected final response from an agent

Every implementation task should finish with:

- Summary of what changed
- Files changed
- Commands run
- Validation result
- Known risks or limitations
- Suggested next task

## Non-negotiables

- Keep changes reviewable.
- No hidden scope creep.
- No production-impacting actions without human approval.
- Source code and tests are the source of truth; agent reasoning is supporting evidence only.
