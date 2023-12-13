void setup() {
  size(500, 500);
  background(255);
  drawBoard();
}

void draw() {
  
}
void keyPressed(){
  if (!gameInProgress){
    int index = key - 'O';
    int row = index / SIZE;
    int col = index % SIZE;
    if (row >= 0 && row < CANVAS_SIZE && col >=0 && col < CANVAS_SIZE){
      if
    }
    
    
  }
}
