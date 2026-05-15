import { createEmptyBoard } from "./game/createEmptyBoard";

const board = createEmptyBoard();

export function App() {
  return (
    <main className="app">
      <h1>Tetris</h1>
      <p className="subtitle">Initial game scaffold</p>

      <section className="board" aria-label="Tetris game board">
        {board.map((row, rowIndex) => (
          <div className="row" key={`row-${rowIndex}`}>
            {row.map((cell, colIndex) => (
              <span className="cell" key={`cell-${rowIndex}-${colIndex}`} data-cell-value={cell} />
            ))}
          </div>
        ))}
      </section>
    </main>
  );
}
