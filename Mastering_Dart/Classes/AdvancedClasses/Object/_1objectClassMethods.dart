class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
  @override
  String toString() => '($x, $y)';
}

void main() {
  Point p1 = Point(1, 1);
  print(p1.toString());
  const list = [Point(1, 2), Point(1, 5)];
  print(list);
}
