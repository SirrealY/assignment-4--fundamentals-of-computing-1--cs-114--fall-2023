void drawX(int row, int col) {
  float cellSize = CANVAS_SIZE / SIZE;
  float x = col * cellSize + cellSize / 2;
  float y = row * cellSize + cellSize / 2;
  float lineSize = cellSize / 2;

  line(x - lineSize, y - lineSize, x + lineSize, y + lineSize);
  line(x + lineSize, y - lineSize, x - lineSize, y + lineSize);
}

void drawO(int row, int col) {
  float cellSize = CANVAS_SIZE / SIZE;
  float x = col * cellSize + cellSize / 2;
  float y = row * cellSize + cellSize / 2;
  float radius = cellSize / 4;

  ellipse(x, y, radius * 2, radius * 2);
}

void drawBoard() {
  background(255);
  stroke(0);
  strokeWeight(2);

  for (int i = 1; i < SIZE; i++) {
    line(i * CANVAS_SIZE / SIZE, 0, i * CANVAS_SIZE / SIZE, CANVAS_SIZE);
    line(0, i * CANVAS_SIZE / SIZE, CANVAS_SIZE, i * CANVAS_SIZE / SIZE);
  }
}
