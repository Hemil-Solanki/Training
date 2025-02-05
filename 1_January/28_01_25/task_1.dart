import 'dart:io';

main() {

  // // --------------------------------------
  // print("\nNumber vowel or constant");
  // print("Enter a character: ");
  // String char = stdin.readLineSync()!;
  // if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
  //   print("$char is a vowel");
  // } else {
  //   print("$char is a constant");
  // }

  // // --------------------------------------
  // print("Number is positive, negative or zero");
  // print("Enter a number: ");
  // int num = int.parse(stdin.readLineSync()!);
  // if (num > 0) {
  //   print("$num is a positive number");
  // } else if (num < 0) {
  //   print("$num is a negative number");
  // } else {
  //   print("$num is zero");
  // }
  
  // // --------------------------------------
  // print("Calculate sum of Natural numbers.");
  // print("Enter a number: ");
  // int num = int.parse(stdin.readLineSync()!);
  // int sum = 0;
  // for (int i = 1; i <= num; i++) {
  //   sum += i;
  // }
  // print("Sum of natural numbers up to $num is $sum");

  // // --------------------------------------
  // print("Generating multiplication table of 5");
  // for (int i = 1; i <= 10; i++) {
  //   print("5 x $i = ${5 * i}");
  // }

  // // --------------------------------------
  // print("Generating multiplication table of 1 to 9");
  // for (int i = 1; i <= 9; i++) {
  //   print("Multiplication table of $i:");
  //   for (int j = 1; j <= 10; j++) {
  //     print("$i x $j = ${i * j}");
  //   }
  //   print("");
  // }

  // // --------------------------------------
  print("Creating a simple calculator, with add, sub, multi and div");
  print("Enter value a");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter value b");
  double b = double.parse(stdin.readLineSync()!);

  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
  print("Enter your choice: ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Addition: ${a + b}");
      break;

    case 2:
      print("Subtraction: ${a - b}");
      break;

    case 3:
      print("Multiplication: ${a * b}");
      break;

      case 4:
      print("Division: ${a / b}");
      break;

    default:
      print("Invalid choice");
  }

  // // --------------------------------------
  // print("Program to print 1 to 100, but not 41");
  // for (int i = 1; i <= 100; i++) {
  //   if (i == 41) {
  //     continue;
  //   }
  //   stdout.write("$i ");
  // }

}