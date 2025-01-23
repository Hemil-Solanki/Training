abstract class Vehicle {
  String? model;
  int? year;

  void v_Data(String model, int year) {
    this.model = model;
    this.year = year;
  }

  void start();
}

class Car extends Vehicle {
  @override
  void start() {
    print("The car model $model from year $year has started.");
  }
}

class Motorcycle extends Vehicle {
  @override
  void start() {
    print("The motorcycle model $model from year $year has started.");
  }
}

void main() {
  Car car = Car();
  car.v_Data("Toyota Corolla", 2020);
  car.start();

  Motorcycle motorcycle = Motorcycle();
  motorcycle.v_Data("Harley-Davidson", 2018);
  motorcycle.start();
}
