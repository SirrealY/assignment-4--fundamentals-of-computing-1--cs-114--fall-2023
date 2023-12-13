void setup() {
  size(500, 500);
  background(255);
  setGame();
  drawBoard();
  computerTurn();
}

void draw() {
  
}

void keyPressed() {
  if (!gameInProgress) {
    println("Game over");
    return;
  }

  char keyPressedChar = key;
  int index = keyPressedChar - '0';

  if (index >= 0 && index <= 8) {
    int row = index / SIZE;
    int col = index % SIZE;

    if (row >= 0 && row < SIZE && col >= 0 && col < SIZE) {
      if (isSquareEmpty(row, col)) {
        userTurn(row, col);
        checkAndPrintWinner(USER);

        if (gameInProgress) {
          computerTurn();
          checkAndPrintWinner(COMPUTER);
        }
      } else {
        println("Invalid move, that square is taken.");
      }
    } else {
      println("Invalid move, the key you pressed is not between 0 and 8");
    }
  } else {
    println("Invalid key, press a number between 0 and 8");
  }
}
