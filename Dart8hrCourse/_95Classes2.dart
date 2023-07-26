class Animal {
  final String name;
  Animal({required this.name});
  void whatAmI() {
    print('I am an Animal');
  }
}

class Bird extends Animal {
  Bird({required String name}) : super(name: name);
  @override
  void whatAmI() {
    print('I am a Bird');
  }
}

class Duck extends Bird {
  Duck({required String name}) : super(name: name);
  @override
  void whatAmI() {
    print('I am a ${this.name}');
  }
}

class Mouse extends Animal {
  Mouse({required String mName}) : super(name: mName);
}

class Cat extends Animal {
  Cat() : super(name: 'Tom');
  void chase(covariant Mouse m) {
    //this is called tightening the type which means that Mouse which is a subclass of Animal can be accepted as an argument.
    print('Tom is chasing ${m.name}!');
  }
}

void main() {
  var d1 = Duck(name: 'Munchking');
  // print(d1.name);
  d1.whatAmI();
  Cat c1 = Cat();
  var m = Mouse(mName: 'Maga');
  c1.chase(m);
}
