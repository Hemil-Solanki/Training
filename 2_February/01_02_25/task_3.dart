String reply(String input) {
  input = input.trim();

  if (input.isEmpty) {
    return "Fine. Be that way!";
  }

  bool isQuestion = input.endsWith('?');
  bool isYelling = input == input.toUpperCase();

  if (isYelling && isQuestion) {
    return "Calm down, I know what I'm doing!";
  } else if (isYelling) {
    return "Whoa, chill out!";
  } else if (isQuestion) {
    return "Sure.";
  } else {
    return "Whatever.";
  }
}

void main() {
  print(reply("How are you?"));
  print(reply("WHAT'S GOING ON?"));
  print(reply("HELLO THERE"));
  print(reply(""));
  print(reply("Okay then."));
}
