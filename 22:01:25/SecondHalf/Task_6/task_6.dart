class Shape {
  double calArea() {
    return 0.0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calArea() {
    return 3.14 * radius * radius;
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double calArea() {
    return 0.5 * base * height;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calArea() {
    return length * width;
  }
}

void main() {
  Shape circle = Circle(5.0);
  Shape triangle = Triangle(4.0, 6.0);
  Shape rectangle = Rectangle(4.0, 8.0);

  print("Area of Circle: ${circle.calArea().toStringAsFixed(2)}");
  print("Area of Triangle: ${triangle.calArea().toStringAsFixed(2)}");
  print("Area of Rectangle: ${rectangle.calArea().toStringAsFixed(2)}");
}
