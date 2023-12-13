void drawX(int row, int col) {
  float x = col * cellSize ;
  float y = row * cellSize ;

  line(x, y, x + cellSize, y + cellSize);
  line(x + cellSize, y , x , y + cellSize);
}

void drawO(int row, int col) {
  float x = col * cellSize + cellSize / 2;
  float y = row * cellSize + cellSize / 2;
  float radius = cellSize * 0.8;
  ellipse(x, y, radius , radius);
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
