import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
}

class Square extends Shape {
  Square({required this.side});
  final double side;
  @override
  // TODO: implement area
  double get area => this.side * this.side;

  @override
  // TODO: implement perimeter
  double get perimeter => this.side * 4;
}

class Circle extends Shape {
  Circle({required this.radius});
  double radius;
  @override
  // TODO: implement area
  double get area => pi * radius * radius;

  @override
  // TODO: implement perimeter
  double get perimeter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void printPerimeter(Shape shape) {
  print(shape.perimeter);
}

void printValuesOfShapes(Shape shape) {
  print('Area: ${shape.area} and Permeter: ${shape.perimeter}');
}

void main() {
  final sq1 = Square(side: 32);
  print(sq1.area);
  final c1 = Circle(radius: 3);
  print(c1.area);
  print(c1.perimeter);
  final c3 = Circle(radius: 5);
  print('Area of the circle: ');
  printArea(c1);
  final list_of_shapes = [sq1, c1, c3];
  print('printing areas of the list of objects: ');
  //list_of_shapes.forEach(printArea); //code against abstract interface rather than complete concrete implementation.
  list_of_shapes.asMap().forEach((index, shape) {
    print('Area of the ${index + 1} shape: ');
    printValuesOfShapes(shape);
  });
}
