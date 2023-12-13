int [][] gameBoard;

void set() {
  gameBoard = new int[SIZE][SIZE];
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      gameBoard[i][j] = EMPTY; // Initialize the game board with zeros
    }
  }
}
boolean isSquareEmpty(int row, int col) {
  return gameBoard[row][col] == EMPTY;
}
void userTurn(int row, int col) {
  if(gameBoard[row][col] == 0) {
    gameBoard[row][col] = USER;//Identifies that the spot in the board is taken by the User
    drawO(row,col);
    if(!checkWinner()){
      computerTurn();
      checkWinner();
      checkDraw();
    }
  } else {
    println("Invalid move, that Square is taken!");
  }
}
void drawShapes()[
]

void computerTurn() {
  int emptyCount = 0 
  int emptyIndex = -1
  //Check for any empty cells 
  
}
