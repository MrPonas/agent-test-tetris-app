#!/usr/bin/env bash
set -euo pipefail

.ai-factory/scripts/validate-fast.sh

if [ -f package.json ]; then
  if npm run | grep -q " e2e"; then
    npm run e2e
  else
    echo "No npm e2e script found; skipping browser/E2E checks."
  fi
else
  echo "No package.json found yet; skipping app-level full validation."
fi

.ai-factory/scripts/security.sh

echo "validate-full completed."
