import 'dart:io';

bool checkWinner(List<List<String>> board) {
  // ows
  for (int i = 0; i < 3; i++) {
    if (board[i][0] != "-" &&
        board[i][0] == board[i][1] &&
        board[i][1] == board[i][2]) {
      print('Player ${board[i][0]} won in row ${i + 1}');
      return true;
    }
  }

  // columns
  for (int j = 0; j < 3; j++) {
    if (board[0][j] != "-" &&
        board[0][j] == board[1][j] &&
        board[1][j] == board[2][j]) {
      print('Player ${board[0][j]} won in column ${j + 1}');
      return true;
    }
  }

  // diagonals
  if (board[0][0] != "-" &&
      board[0][0] == board[1][1] &&
      board[1][1] == board[2][2]) {
    print('Player ${board[0][0]} won diagonally (top-left to bottom-right)');
    return true;
  }
  if (board[0][2] != "-" &&
      board[0][2] == board[1][1] &&
      board[1][1] == board[2][0]) {
    print('Player ${board[0][2]} won diagonally (top-right to bottom-left)');
    return true;
  }

  return false;
}

void printBoard(List<List<String>> board) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("${board[i][j]} ");
    }
    print("");
  }
}

bool isBoardFull(List<List<String>> board) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == "-") {
        return false;
      }
    }
  }
  return true;
}

void main() {
  List<List<String>> board = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]
  ];
  String currentPlayer = "X";
  bool gameWon = false;
  bool gameDraw = false;

  while (!gameWon && !gameDraw) {
    printBoard(board);
    print("Player $currentPlayer's turn (enter row and column, 1-3):");

    stdout.write("Row: ");
    int row = int.parse(stdin.readLineSync()!);
    stdout.write("Column: ");
    int col = int.parse(stdin.readLineSync()!);

    if (row < 1 || row > 3 || col < 1 || col > 3) {
      print("Invalid input. Row and column must be between 1 and 3.");
      continue;
    }

    if (board[row - 1][col - 1] != "-") {
      print("That cell is already occupied. Try again.");
      continue;
    }

    board[row - 1][col - 1] = currentPlayer;
    gameWon = checkWinner(board);
    gameDraw = isBoardFull(board);

    if (gameWon) {
      printBoard(board);
      print("Congratulations! Player $currentPlayer has won!");
    } else if (gameDraw) {
      printBoard(board);
      print("It's a draw!");
    } else {
      if (currentPlayer == "X"){
        currentPlayer = "O";
      } else {
        currentPlayer = "X";
      }
    }
  }
}