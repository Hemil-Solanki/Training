import 'dart:io';

class Sentence {
  String? sentence;

  void addSentence() {
    print("Enter the sentence: ");
    sentence = stdin.readLineSync()!;
  }

  void reverseSentence() {
    String reversedSentence = '';
    String currentWord = '';

    for (int i = 0; i < sentence!.length; i++) {
      if (RegExp(r'[ ~!@#$%^&*()_+|}{":<>?/.,;0-9]').hasMatch(sentence![i])) {
        reversedSentence += reverseWord(currentWord);
        reversedSentence += sentence![i];
        currentWord = '';
      } else {
        currentWord += sentence![i];
      }
    }

    reversedSentence += reverseWord(currentWord);
    print(reversedSentence);
  }

  String reverseWord(String word) {
    String reversedWord = '';
    for (int i = word.length - 1; i >= 0; i--) {
      reversedWord += word[i];
    }
    return reversedWord;
  }
}

void main() {
  Sentence addSentence = Sentence();
  addSentence.addSentence();
  addSentence.reverseSentence();
}