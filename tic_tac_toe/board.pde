int [][] gameBoard;

void setGame() {
  gameBoard = new int[SIZE][SIZE];
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      gameBoard[i][j] = EMPTY; // Initialize the game board with zeros
    }
  }
  gameInProgress = true;
}

boolean isBoardFull(){
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      if (isSquareEmpty(i, j)) {
        return false; // If any square is empty, the board is not full
      }
    }
  }
  return true;
}


boolean checkWinner(int player) {
  // Check rows and columns
  for (int i = 0; i < SIZE; i++) {
    if (gameBoard[i][0] == player && gameBoard[i][1] == player && gameBoard[i][2] == player) {
      return true; // Horizontal win
    }
    if (gameBoard[0][i] == player && gameBoard[1][i] == player && gameBoard[2][i] == player) {
      return true; // Vertical win
    }
  }

  // Check diagonals
  if (gameBoard[0][0] == player && gameBoard[1][1] == player && gameBoard[2][2] == player) {
    return true; // Diagonal win from top-left to bottom-right
  }
  if (gameBoard[0][2] == player && gameBoard[1][1] == player && gameBoard[2][0] == player) {
    return true; // Diagonal win from top-right to bottom-left
  }

  return false; // No winning combinations found
}

void checkAndPrintWinner(int player) {
  if (checkWinner(player)) {
    println("The " + (player == USER ? "User" : "Computer") + " wins!");
    gameInProgress = false;
  } else if (isBoardFull()) {
    println("The board is full, it's a draw!");
    gameInProgress = false;
  } 
}


void userTurn(int row, int col) {
  if(isSquareEmpty(row, col)){
    gameBoard[row][col] = USER; 
    drawO(row,col);
  }
}



void makeMoves() {
  for (int i = 0; i < SIZE;i++){
    for(int j = 0; j < SIZE;j++){
      if(gameBoard[i][j] == USER){
        drawO(i,j);
      } else if (gameBoard[i][j] == COMPUTER){
        println("Drawing X at: " + i + ", " + j);
        drawX(i,j);
      }
    }
  }
}
boolean isSquareEmpty(int row, int col) {
  return gameBoard[row][col] == EMPTY;
}

void computerTurn(){
 if(gameInProgress){
    while (true) {
    int row = int(random(SIZE));
    int col = int(random(SIZE));
    if (isSquareEmpty(row, col)){
      gameBoard[row][col] = COMPUTER; 
      drawX(row,col);
      break;
   }
  }
 }
}
      
      
  
