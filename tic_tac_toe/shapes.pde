void drawX(int row, int col) {
  float x = col * cellSize ;
  float y = row * cellSize ;
  stroke(255, 0, 0);  // Set stroke color to red
  line(x, y, x + cellSize, y + cellSize);
  line(x + cellSize, y , x , y + cellSize);
}

void drawO(int row, int col) {
  float x = col * cellSize + cellSize / 2;
  float y = row * cellSize + cellSize / 2;
  stroke(0, 0, 255);  // Set stroke color to blue
  float radius = cellSize * 0.8;//Radius of a circle 
  ellipse(x, y, radius , radius);
}

void drawBoard() {
  background(255);
  stroke(0);
  strokeWeight(2);
  // Draw rectangles as outlines for each cell
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      float x = i * CANVAS_SIZE / SIZE;
      float y = j * CANVAS_SIZE / SIZE;
      noFill();
      rect(x, y, CANVAS_SIZE / SIZE, CANVAS_SIZE / SIZE);
    }
  }
  for (int i = 1; i < SIZE; i++) {
    line(i * CANVAS_SIZE / SIZE, 0, i * CANVAS_SIZE / SIZE, CANVAS_SIZE);
    line(0, i * CANVAS_SIZE / SIZE, CANVAS_SIZE, i * CANVAS_SIZE / SIZE);
  }
}
