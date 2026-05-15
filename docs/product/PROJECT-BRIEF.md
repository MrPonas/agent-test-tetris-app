# Agent Test Tetris App

## Purpose

This repository is a small test project for building and refining an AI-assisted software factory workflow.

The product target is a simple Tetris-style web app. The real learning goal is to validate whether agents can work from clear specs, bounded tasks, validation scripts, review prompts, and human approval gates.

## Product idea

Build a browser-playable Tetris-style game with:

- Start/restart game
- Falling tetromino pieces
- Keyboard controls
- Line clearing
- Score tracking
- Game-over state
- Basic responsive layout
- Tests for core game logic

## Initial technical direction

Recommended first implementation stack:

- Vite
- TypeScript
- React
- Plain CSS or CSS modules
- Vitest for game-logic tests
- Playwright later for browser testing

This is intentionally lightweight. Do not introduce backend, authentication, database, payments, or deployment until explicitly requested.

## Current non-goals

- Multiplayer
- User accounts
- Online leaderboard
- Mobile-native app
- Backend API
- Persistent storage
- Complex design system

## AI workflow goal

Use this repo to practice the loop:

1. Create/approve a small task.
2. Let an agent implement only that task.
3. Run validation.
4. Review the diff.
5. Merge only after human approval.
