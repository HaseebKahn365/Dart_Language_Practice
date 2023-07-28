import 'dart:math';

abstract class Shape {
  const Shape(); //default constructor is required for factory constructor.
  double get area;
  double get perimeter;
//   factory Shape.fromJson(Map<String, Object> json) {
//     final type = json['type'];
//     switch (type) {
//       case 'square':
//         return Square(side: json['side'] as double);
//       case 'circle':
//         return Circle(radius: json['radius'] as double);
//       default:
//         throw UnsupportedError('Shape type not supported');
//     }
//   }
// }

  static Shape fromJson(Map<String, Object> json) {
    //takes a map and returns a shape object.
    final type = json['type']; //this is the type of the shape stored as a string.
    switch (type) {
      case 'square':
        return Square(
            side: json['side']
                as double); //this is the shape object that is returned along with the side parameter passed to the constructor of Square.
      case 'circle':
        return Circle(radius: json['radius'] as double);
      default:
        throw UnsupportedError('Shape type not supported');
    }
  }
}

class Square extends Shape {
  Square({required this.side});
  final double side;
  @override
  double get area => this.side * this.side;

  @override
  double get perimeter => this.side * 4;
}

class Circle extends Shape {
  Circle({required this.radius});
  double radius;
  @override
  double get area => pi * radius * radius;

  @override
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
  final shapesJSON = [
    {
      'type': 'square',
      'side': 32.0,
    },
    {
      'type': 'circle',
      'radius': 3.0,
    },
    // {
    //   'type': 'triangle',
    //   'radius': 5.0,
    // },
  ];
  final shapes = shapesJSON.map((json) => Shape.fromJson(json));
  shapes.forEach(printArea);
}
