import 'dart:io';

class NumberAnalysis {

  String? a;
  String? b;

  void takeInput() {
    stdout.write('Enter the first string: ');
    a = stdin.readLineSync();
    stdout.write('Enter the second string: ');
    b = stdin.readLineSync();
  }

  String revString(String c) {
    return c.split('').reversed.join('');
  }

  String concatenateStrings(String str1, String str2) {
    return str1 + str2;
  }

  void processAndDisplay() {
    if (a != null && b != null) {
      String revA = revString(a!);
      String revB = revString(b!);
      String concatenatedString = concatenateStrings(revA, revB);

      print('Reversed and concatenated string: $concatenatedString');
    } else {
      print('Please provide both strings using the takeInput() method.');
    }
  }
}

void main() {
  NumberAnalysis analysis = NumberAnalysis();
  analysis.takeInput();
  analysis.processAndDisplay();
}