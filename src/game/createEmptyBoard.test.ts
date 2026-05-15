import { describe, expect, it } from "vitest";
import { BOARD_HEIGHT, BOARD_WIDTH, createEmptyBoard } from "./createEmptyBoard";

describe("createEmptyBoard", () => {
  it("creates a board with expected dimensions", () => {
    const board = createEmptyBoard();

    expect(board).toHaveLength(BOARD_HEIGHT);
    expect(board.every((row) => row.length === BOARD_WIDTH)).toBe(true);
    expect(board.flat().every((cell) => cell === 0)).toBe(true);
  });
});
