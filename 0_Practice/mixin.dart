// ask Gemini to explain the code for understanding
import 'dart:io';

class car {
  String name = "BMW";
  int wheels = 4;

  void details() {
    print("The car name is :${name} and it has ${wheels} wheels");
  }
}

mixin wires {
  void connect() {
    print("Wires Connected");
  }
}

class vehicle extends car with wires {
  vehicle() {
    details();
    connect();
  }
}

main() {
  vehicle();
}
