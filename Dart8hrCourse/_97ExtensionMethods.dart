//to limits the extension of the class within the file, you can declare its constructor as private. using A._();

extension pi on double {
  double get pie => 3.14;
  double add17() => this + 17;
}

void main() {
  print(1.4.pie);
  print(3.14.add17());
}
