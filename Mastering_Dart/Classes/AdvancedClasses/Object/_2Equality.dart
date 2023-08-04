class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
  @override
  String toString() => '($x, $y)';
  // bool operator ==(Object p1) { // if we don't even want the code to compile if other objects are being compared
  //   if (p1 is Point) {
  //     return x == p1.x && y == p1.y;
  //   } else
  //     return false;
  // }
  @override
  bool operator ==(covariant Point p1) {
    return x == p1.x && y == p1.y;
  }

  Point operator +(
    covariant Point p1,
  ) {
    return Point((x + p1.x), (y + p1.y));
  }

  Point operator *(int value) {
    return Point(x * value, y * value);
  }
}

void main() {
  const p101 = Point(1, 1);
  const p102 = Point(1, 1);
  print('p1 hash = ${p101.hashCode}, p2 hash = ${p102.hashCode}');

  print(Point(0, 0) == Point(0, 0)); //THIS IS FALSE DUE TO DIFFERENT HASHES. WE NEEED TO OVERRIDE THE == OPERATOR
  Point p1 = Point(0, 0);
  Point p2 = Point(1, 2);
  Point P3 = p1 + p2;
  print(P3.toString());
  p1 = p2;
  print(p1.toString());
  p2 = p1 * 3;
  print(p2.toString());
}
