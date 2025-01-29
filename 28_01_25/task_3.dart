import 'dart:io';
import 'dart:math';

class one {
  void func() {
    // take user inputs, name n age. and will calculate years before 100.
    print("Enter your name: ");
    String name = stdin.readLineSync()!;
    print("Enter your age: ");
    int age = int.parse(stdin.readLineSync()!);
    int years = 100 - age;
    print("Hello $name, you will be 100 years old in $years years.");
  }
}

class two {
  void func() {
    // takes user inputs, and will list out all divisors of that number
    print("Enter number: ");
    int num = int.parse(stdin.readLineSync()!);
    List<int> divisors = [];
    for (int i = 1; i <= num; i++) {
      if (num % i == 0) {
        divisors.add(i);
      }
    }
    print("Divisors of $num are: $divisors");
  }
}

class three {
  void func() {
    // 2 list, find common.
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> commonElements = [];
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < b.length; j++) {
        if (a[i] == b[j] && !commonElements.contains(a[i])) {
          commonElements.add(a[i]);
          break;
        }
      }
    }
    print("Common elements: $commonElements");
  }
}

class four {
  void func() {
    // List in a variable to list
    List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
    List<int> evenNumbers = [];
    for (int element in a) {
      if (element % 2 == 0) {
        evenNumbers.add(element);
      }
    }
    print("Even numbers in the list: $evenNumbers");
  }
}

void playRockPaperScissors() {
  final random = Random();
  final computerChoice = random.nextInt(3);

  print('Choose Rock (r), Paper (p), or Scissors (s):');
  final userInput = stdin.readLineSync()?.toLowerCase();

  String result;
  if (userInput == 'r') {
    if (computerChoice == 0) {
      result = 'It\'s a tie!';
    } else if (computerChoice == 1) {
      result = 'Computer wins!';
    } else {
      result = 'You win!';
    }
  } else if (userInput == 'p') {
    if (computerChoice == 0) {
      result = 'You win!';
    } else if (computerChoice == 1) {
      result = 'It\'s a tie!';
    } else {
      result = 'Computer wins!';
    }
  } else if (userInput == 's') {
    if (computerChoice == 0) {
      result = 'Computer wins!';
    } else if (computerChoice == 1) {
      result = 'You win!';
    } else {
      result = 'It\'s a tie!';
    }
  } else {
    result = 'Invalid choice.';
  }

  // Print the result
  print('You chose: $userInput');
  print('Computer chose: ${getChoiceName(computerChoice)}');
  print(result);
}

String getChoiceName(int choice) {
  switch (choice) {
    case 0:
      return 'Rock';
    case 1:
      return 'Paper';
    case 2:
      return 'Scissors';
    default:
      return 'Unknown';
  }
}

class six {
  void func() {
    // Random number between 1 to 100, let user guess, and display too high too low or exactly right
    int guess = -1;
    int randomNumber = Random().nextInt(100) + 1;
    int guessCounter = 0;

    while (guess != randomNumber) {
      print("Enter your guess: ");
      guess = int.parse(stdin.readLineSync()!);
      if (guess == randomNumber) {
        print("Exactly right");
        print("Random number is $randomNumber");
        print("Total Guesses: $guessCounter");
      } else if (guess > randomNumber) {
        print("Too high");
      } else {
        print("Too low");
      }
      guessCounter += 1;
    }
  }
}

class seven {
  // taking a list, and making 2 lists with just 1st and last element
  void func() {
    List<int> numbers = [1, 2, 3, 4, 5];
    List<int> firstLast = [numbers.first, numbers.last];
    print("The 2 numbers in list are: ${firstLast}");
  }
}

class eight {
  // let user decide no of fibonacci series number to print
  int a = 0;
  int b = 1;
  void func() {
    print("Enter no of Fibonacci series numbers to print: ");
    int no = int.parse(stdin.readLineSync()!);
    print(a);
    print(b);
    for (int i = 0; i < no - 2; i++) {
      int c = a + b;
      a = b;
      b = c;
      print(c);
    }
  }
}

class nine {
  List list = [];
  // take list, and remove duplicates and make new one without duplicates
  void func() {
    print("Enter no of elements in list: ");
    int no = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < no; i++) {
      print("Enter element $i: ");
      int element = int.parse(stdin.readLineSync()!);
      list.add(element);
    }
    print("Original list: $list");
    // List newList = [];
    // for (int i = 0; i < list.length; i++) {
    //   if (!newList.contains(list[i])) {
    //     newList.add(list[i]);
    //   }
    // }
    print("New list: ${list.toSet().toList()}");
  }
}

class ten {
  // printing string backwards
  void func() {
    print("Enter a String: ");
    String inputString = stdin.readLineSync()!;
    String reversedString = reverseWords(inputString);
    print("Reversed string: $reversedString");
  }

  String reverseWords(String input) {
    List<String> words = input.split(' ');
    List<String> reversedWords = words.reversed.toList();
    return reversedWords.join(' ');
  }
}

class twelve {
  // let user guess a 4 digit number, and if that matched the computer's number print cow else bull
  void guessNumber() {
    Random random = Random();
    int computerNumber = random.nextInt(8999) + 1000;
    // split computer number into list
    List<int> computerList = computerNumber.toString().split('').map(int.parse).toList();
    print("Computer number: $computerNumber");
    int guess;
    int guessCounter = 0;

    do {
      print("Enter a 4-digit number: ");
      guess = int.parse(stdin.readLineSync()!);
      // split user number into list
      List<int> userList = guess.toString().split('').map(int.parse).toList();

      int cows = 0;
      int bulls = 0;

      // lets check both the list together
      if (guess == computerNumber) {
        print("Exactly right");
        print("Total Guesses: $guessCounter");
        break;
      } else {
        for (int i = 0; i < 4; i++) {
          if (userList[i] == computerList[i]) {
            cows++;
          } else if (computerList.contains(userList[i])) {
            bulls++;
          }
          guessCounter += 1;
        }
        print("Cows: $cows, Bulls: $bulls");
      }
    } while (guess != computerNumber);
  }

}

class thirteen {
  // Ask user for Grid, and make it
  void func() {
    print("Enter the size of Grid :");
    int size = int.parse(stdin.readLineSync()!);
    drawHorizontalLine(size);
    for (int i = 0; i < size; i++) {
      drawRow(size);
      drawHorizontalLine(size);
    }
  }

  void drawHorizontalLine(int size) {
    String line = " ";
    for (int i = 0; i < size; i++) {
      line += "--- ";
    }
    print(line);
  }

  void drawRow(int size) {
    String row = "|";
    for (int i = 0; i < size; i++) {
      row += "   |";
    }
    print(row);
  }
}

main() {
  // ----------------------------------------------------
  // // take user inputs, name n age. and will calculate years before 100.
  // one().func();

  // ----------------------------------------------------
  // // takes user inputs, and will list out all divisors of that number
  // two().func();

  // ----------------------------------------------------
  // // 2 list, find common.
  // three().func();

  // ----------------------------------------------------
  // // List in a variable to list
  // four().func();

  // ----------------------------------------------------
  // // RockPaperScissor - User vs Computer
  // playRockPaperScissors();

  // ----------------------------------------------------
  // Random number between 1 to 100, let user guess, and display too high too low or exactly right
  // six().func();

  // ----------------------------------------------------
  // taking a list, and making 2 lists with just 1st and last element
  // seven().func();

  // ----------------------------------------------------
  // let user decide no of fibonacci series number to print
  // eight().func();

  // ----------------------------------------------------
  // take list, and remove duplicates and make new one without duplicates
  // nine().func();

  // ----------------------------------------------------
  // printing string backwards
  // ten().func();

  // 11 -------------------------------------------
//   // Generate user password
//   print("\nGenerating Random Password.");
//   print("Enter your type: \n1. Weak\n2. Strong ");
//   int choice = int.parse(stdin.readLineSync()!);
//
//   switch (choice) {
//     case 1:
//       print("Enter desired password length:");
//       int passwordLength = int.parse(stdin.readLineSync()!);
//
//       String password = generatePasswordW(length: passwordLength);
//       print("Generated password: $password");
//       break;
//
//     case 2:
//       print("Enter desired password length:");
//       int passwordLength = int.parse(stdin.readLineSync()!);
//
//       String password = generatePasswordS(length: passwordLength);
//       print("Generated password: $password");
//       break;
//
//     default:
//       print("Invalid choice");
//       break;
//   }
// }
//
// String generatePasswordS({int length = 12}) {
//   const chars =
//       'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+={}[]|;:<>,.?/~';
//   final random = Random.secure();
//   String password = '';
//   for (int i = 0; i < length; i++) {
//     password += chars[random.nextInt(chars.length)];
//   }
//   return password;
// }
//
//   String generatePasswordW({int length = 12}) {
//     const chars =
//         'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
//     final random = Random.secure();
//     String password = '';
//     for (int i = 0; i < length; i++) {
//       password += chars[random.nextInt(chars.length)];
//     }
//     return password;

  // -------------------------------------------
  // let user guess a 4 digit number, and if that matched the computer's number print cow else bull
  // twelve().guessNumber();

  // -------------------------------------------
  // Ask user for Grid, and make it
  thirteen().func();
}
