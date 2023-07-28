mixin Swimming {
  void swim() => print('swimming');
}

class Animal {
  void breath() => print('breathing');
}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  final fish = Fish();
  fish.breath();
  fish.swim();

  final human = Human();
  human.breath();
  human.swim();
}
