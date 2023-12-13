void setup() {
  size(500, 500);
  background(255);
  drawBoard();
}

void draw() {
  
}

void keyPressed(){
  if(!gameInProgess){
    println("Game over");
    return;
  }
  int index = key - '0';
  if(index >= 0 && index <= 8) {
    int row = index / SIZE;
    int col = index % SIZE;
   if (row >= 0 && row < SIZE && col>= 0 && col < SIZE){
    if(isSquareEmpty(row, col)){
      userTurn(row, col);
      checkWinner();
      if(gameInProgress) {
        computerTurn();
        checkWinner();
      }
    } else {
      println("Invalid move, that square is taken.");
    }
  } else {
    println("The key you pressed is invalid. Press a number between 0 and 8");
    
  }
 }
}
