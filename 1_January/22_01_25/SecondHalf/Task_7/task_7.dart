class Shape {
  String? _color;

  void setColor(String color) {
    _color = color;
  }

  String? getColor() {
    return _color;
  }

  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double? _radius;

  void setRadius(double radius) {
    _radius = radius;
  }

  double? getRadius() {
    return _radius;
  }

  @override
  double area() {
    return 3.14 * (_radius! * _radius!);
  }
}

class Rectangle extends Shape {
  double? _width;
  double? _height;

  void setDimensions(double width, double height) {
    _width = width;
    _height = height;
  }

  double? getWidth() {
    return _width;
  }

  double? getHeight() {
    return _height;
  }

  @override
  double area() {
    return _width! * _height!;
  }
}

void main() {
  Circle circle = Circle();
  circle.setColor("Red");
  circle.setRadius(5);

  Rectangle rectangle = Rectangle();
  rectangle.setColor("Blue");
  rectangle.setDimensions(4, 6);

  print("\nCircle Details:");
  print("Color: ${circle.getColor()}");
  print("Radius: ${circle.getRadius()}");
  print("Area: ${circle.area()}");

  print("\nRectangle Details:");
  print("Color: ${rectangle.getColor()}");
  print("Width: ${rectangle.getWidth()}");
  print("Height: ${rectangle.getHeight()}");
  print("Area: ${rectangle.area()}");
}
