import 'dart:io';

class ArithmeticFunc {
  var a;
  var b;

  void add() {
    print("Addition: ${a + b}");
  }

  void sub() {
    print("Subtraction: ${a - b}");
  }

  void mul() {
    print("Multiplication: ${a * b}");
  }

  void div() {
    print("Division: ${a / b}");
  }
}

void main() {
  ArithmeticFunc arithmeticFunc = ArithmeticFunc();

  print("\nArithmetic Operations");
  print("Enter value a: ");
  arithmeticFunc.a = num.parse(stdin.readLineSync()!);
  print("Enter value b: ");
  arithmeticFunc.b = num.parse(stdin.readLineSync()!);

  while (true) {
    print("Enter your choice of operation: ");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        arithmeticFunc.add();
        break;
      case 2:
        arithmeticFunc.sub();
        break;
      case 3:
        arithmeticFunc.mul();
        break;
      case 4:
        arithmeticFunc.div();
        break;
      case 5:
        print("Exiting...");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}
