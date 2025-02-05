class Shape {
  String? color;

  void colorFunc(String color) {
    this.color = color;
  }

  double area() {
    return 0.0;
  }
}

class Circle extends Shape {
  double? radius;

  void c_Data(double radius) {
    this.radius = radius;
  }

  @override
  double area() {
    return 3.14 * (radius! * radius!);
  }
}

class Rectangle extends Shape {
  double? width;
  double? height;

  void r_data(double width, double height) {
    this.width = width;
    this.height = height;
  }

  @override
  double area() {
    return width! * height!;
  }
}

void main() {
  Circle circle = Circle();
  circle.colorFunc("Red");
  circle.c_Data(5.0);

  Rectangle rectangle = Rectangle();
  rectangle.colorFunc("Blue");
  rectangle.r_data(4.0, 6.0);

  print("Circle Details:");
  print("Color: ${circle.color}");
  print("Radius: ${circle.radius}");
  print("Area: ${circle.area()}");

  print("\nRectangle Details:");
  print("Color: ${rectangle.color}");
  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${rectangle.area()}");
}
