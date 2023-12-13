public final int CANVAS_SIZE = 500;
public final int SIZE = 3;
public final int cellSize = CANVAS_SIZE / SIZE;//Get cellSize 
public final int cellDouble = cellSize * 2;
boolean gameInProgress = true;//Asume the game is started 
final int EMPTY = 0; //Board intialized with EMPTY
final int COMPUTER = 1;//When the computer moves, the 2d Array is populated at that location with 1
final int USER = 2;//When the USEr moves, the 2d Array is populated at that location with 2s.
