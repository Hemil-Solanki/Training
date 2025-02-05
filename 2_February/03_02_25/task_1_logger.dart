import 'dart:io';

main() {
  String message = "Hello, World!";
  Logger? logger;

  // you can also use this for manual automation of logger
  // var logger = ConsoleLogger();
  // logger.log(message);

  // user input selection
  print("Enter the typer of log you want to print: ");
  print("1. ConsoleLogger");
  print("2. FileLogger");
  print("3. ErrorLogger");
  stdout.write("Enter your choice (1-3): ");
  int? type = int.parse(stdin.readLineSync()!);

  switch (type) {
    case 1:
      logger = ConsoleLogger();
      logger.log(message);
      break;
    case 2:
      logger = FileLogger();
      logger.log(message);
      break;
    case 3:
      logger = ErrorLogger();
      logger.log(message);
      break;
    default:
      print("Invalid choice");
  }
}

// Abstract Logger Interface
abstract class Logger {
  void log(String message) {
    print("Logger: $message");
  }
}

// Console Logger (Green)
class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print("\x1B[32m[ConsoleLogger]: $message");
  }
}

// File Logger (Blue)
class FileLogger implements Logger {
  @override
  void log(String message) {
    print("\x1B[34m[FileLogger]: $message");
  }
}

// Error Logger (Red)
class ErrorLogger implements Logger {
  @override
  void log(String message) {
    print("\x1B[1;31m[ErrorLogger]: $message");
  }
}