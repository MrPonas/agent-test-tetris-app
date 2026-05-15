#!/usr/bin/env bash
set -euo pipefail

if command -v gitleaks >/dev/null 2>&1; then
  gitleaks detect --source . --no-banner
else
  echo "gitleaks not installed; skipping secret scan."
fi

if command -v semgrep >/dev/null 2>&1; then
  semgrep scan --config auto .
else
  echo "semgrep not installed; skipping static security scan."
fi

if command -v trivy >/dev/null 2>&1; then
  trivy fs .
else
  echo "trivy not installed; skipping filesystem/dependency scan."
fi

echo "security checks completed with available tools."
