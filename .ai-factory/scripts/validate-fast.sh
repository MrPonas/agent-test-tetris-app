#!/usr/bin/env bash
set -euo pipefail

if [ -f package.json ]; then
  if npm run | grep -q " lint"; then
    npm run lint
  else
    echo "No npm lint script found; skipping lint."
  fi

  if npm run | grep -q " typecheck"; then
    npm run typecheck
  else
    echo "No npm typecheck script found; skipping typecheck."
  fi

  if npm run | grep -q " test"; then
    npm test
  else
    echo "No npm test script found; skipping tests."
  fi
else
  echo "No package.json found yet. Project scaffold is not created, so fast validation is limited to repository file checks."
fi

if command -v git >/dev/null 2>&1; then
  git diff --check
fi

echo "validate-fast completed."
