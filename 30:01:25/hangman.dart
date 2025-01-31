import 'dart:io';
import 'dart:math';

class HangmanGame {
  late String realWord;
  late List<String> guess;
  late List<String> userWord;
  int wrong = 6;
  String hint = "";

  List<String> wordList = [
    "apple",
    "banana",
    "orange",
    "elephant",
    "lion",
    "tiger",
    "car",
    "train",
    "bus",
    "sun",
    "moon",
    "tree",
    "house",
    "sky",
    "water",
  ];

  HangmanGame() {
    startGame();
  }

  void startGame() {
    // Choose a random word
    realWord = wordList[Random().nextInt(wordList.length)];
    guess = [];
    userWord = List.filled(realWord.length, "_");
  }

  void displayGameState() {
    print("Word: ${userWord.join(" ")}");
    print("Guessed letters: ${guess.join(", ")}");
    print("Incorrect guesses remaining: $wrong");
  }

  bool guessLetter(String letter) {
    if (guess.contains(letter)) {
      print("You already guessed that letter!");
      return false;
    }

    guess.add(letter);

    if (realWord.contains(letter)) {
      // Update the word progress
      for (int i = 0; i < realWord.length; i++) {
        if (realWord[i] == letter) {
          userWord[i] = letter;
        }
      }
      return true;
    } else {
      wrong--;
      return false;
    }
  }

  bool isGameWon() {
    return !userWord.contains("_");
  }

  bool isGameLost() {
    return wrong == 0;
  }
}

void main() {
  HangmanGame game = HangmanGame();

  while (true) {
    game.displayGameState();

    stdout.write("Guess a letter: ");
    String? input = stdin.readLineSync();

    if (input == null || input.length != 1 || !RegExp(r'[a-zA-Z]').hasMatch(input)) {
      print("Invalid input. Please enter a single letter.");
      continue;
    }

    String letter = input.toLowerCase();
    game.guessLetter(letter);

    if (game.isGameWon()) {
      print("Congratulations! You won. The word was ${game.realWord}");
      break;
    }

    if (game.isGameLost()) {
      print("You lost! The word was ${game.realWord}");
      break;
    }
  }
}