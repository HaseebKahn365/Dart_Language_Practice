extension on String {
  int? toInt() => int.tryParse(this);
}

extension on int {
  void intPrinter() => print(this);
}

void main() {
  int.tryParse('1123');
  '1123'.toInt(); // this is an extension method
  final num = '324'.toInt();
  print(num);
  123.intPrinter();

  // number extension
}
