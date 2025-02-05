class Person {
  String name;
  int? age;
  String? email;

  // setting Instances
  // constructor
  Person(this.name, this.age, this.email);

  // method
  void printData() {
    print("Name: $name");
    print("Age: ${age ?? "Not given"}");
    print("Email: ${email?.toUpperCase() ?? "Not given"}");
  }
}

main() {
  print("\nNull Safety");
  Person a = Person("Hemil", 20, null);
  a.printData();
}

