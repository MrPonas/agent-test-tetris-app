---
name: Feature task
description: Create a bounded implementation task for an AI/human developer
title: "[Task]: "
labels: ["task"]
body:
  - type: textarea
    id: goal
    attributes:
      label: Goal
      description: What should be true after this task is complete?
      placeholder: Implement...
    validations:
      required: true
  - type: textarea
    id: context
    attributes:
      label: Context
      description: Relevant background, constraints, and links.
    validations:
      required: true
  - type: textarea
    id: scope
    attributes:
      label: Scope
      description: Files, modules, or areas expected to change.
    validations:
      required: true
  - type: textarea
    id: non-goals
    attributes:
      label: Non-goals
      description: What must not be changed in this task?
    validations:
      required: true
  - type: textarea
    id: acceptance
    attributes:
      label: Acceptance criteria
      description: Checklist of observable outcomes.
      placeholder: |
        - [ ] ...
        - [ ] ...
    validations:
      required: true
  - type: textarea
    id: validation
    attributes:
      label: Validation plan
      placeholder: |
        - .ai-factory/scripts/validate-fast.sh
        - Manual check: ...
    validations:
      required: true
  - type: dropdown
    id: risk
    attributes:
      label: Risk level
      options:
        - low
        - medium
        - high
    validations:
      required: true
