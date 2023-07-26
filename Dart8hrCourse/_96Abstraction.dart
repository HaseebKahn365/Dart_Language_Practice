//abstract classes
//abstract methods
//Interfaces

abstract class UserRepositoryInterface {
  late final List<int> usersList; //these features are promises to be implemented in the subclasses/

  void create(); //its an abstract method.
  List<int> read();
  void update();
  void delete();
}

class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  UserRepository() {
    usersList = read();
    print('Creating read list of users: $usersList');
  }

  @override
  void create() {
    print('Created');
  }

  @override
  void delete() {
    print('Deleted');
  }

  @override
  List<int> read() => [1, 2, 3, 4, 5];

  @override
  void update() {
    print('Updated');
  }
}

//Multiple inheritance using implement
//the Multiple ingeritance is not available in the dart language because of the deadly diamond of death.
//this isssue can be overcome by Mixin

class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist on Performer {
  void playGuitar() => print('Playing guitar');
  void test() => super.perform(); //it will call the play guitar method;
}

mixin Drummer {
  void playDrummer() => print('Playing drummer');
  void perform() => playDrummer(); //it will call the play guitar method;
}

class A {
  A();
  void funA() {
    print('function of a');
  }

  external void doSomething();
}

class B {
  void funB() {
    print('Function of B');
  }
}

class C extends A implements B {
  @override
  void funB() {
    print('Overriden funB in C');
  }

  @override
  void doSomething() {
    print('Overriden external dosomething in the C class');
  }
}

class Musician extends Performer with Guitarist, Drummer {
  //the performer is mixed in with guitarist and drummer.
  //The methods of the mixins don't have to be overriden.
}

void main() {
  // UserRepository userRepository = UserRepository(); //this is explicit interface implementation
  // userRepository.create();
  // userRepository.update();
  // userRepository.read();
  // userRepository.delete();

  // C c1 = C(); //this is implicit interfaces implementation. Every class acts as an interface.
  // c1.funA();
  // c1.funB();
  // c1.doSomething();
  //var m1 = Musician();
  //m1.test(); //this will call the performs because although the drummer's perform() is available, it will look for the perform() in the superclass.

  var s1 = Student();
  s1.actHumanW();
}

class Human {
  void funHuman() {
    print('Acting like a human!');
  }
}

mixin Writist on Human {
  void doWriting() {
    print('Writist is writing');
  }

  void actHumanW() => super.funHuman();
}

mixin Reader {
  void read() {
    print('Reader is reading');
  }

  void funHuman() {
    print('Reader is acting like a human');
  }
}

class Student extends Human with Writist, Reader {}

//Mixins are used for shared behaviours. 
//the order of the mixins matter
// extends= inheritance, implements= abstraction, with= mixins


 