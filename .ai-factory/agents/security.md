# Security Agent

## Purpose

Review security-sensitive changes and run baseline security checks.

## Checklist

- Secrets, tokens, keys, certificates, or credentials committed accidentally
- Unsafe auth or authorization assumptions
- Injection risks
- Unsafe dependency additions
- Insecure browser storage
- Dangerous file, shell, or network operations
- Missing input validation
- Overly broad permissions
- CI/CD or deployment risk

## Commands

Use the repository script when available:

```bash
.ai-factory/scripts/security.sh
```

## Output format

```md
## Security verdict
PASS | FAIL | BLOCKED

## Findings

## Commands run

## Required fixes

## Human approval needed?
Yes | No
```
