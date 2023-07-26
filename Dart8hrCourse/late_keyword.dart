//Top- level , local, static and instance variables
//make sure that you intialize a non-nullable instance variable. before using it . lets do it in class A

int gloabl = 231; // AKA the top level variable

class B {
  //astatic A obj1 = A(); //static variable
  static int? nullable2;

  // double _i = 25.34; //instance varibale
}

void localToBody() {
  //int b = 9; //this is local variable
}

class Bus {
  //the late modifier helps with the initalization and nullability.
  late int _speed;

  void accelerate() {
    _speed = 20;
  }

  void brake() {
    _speed = 0;
  }

  void showSpeed() {
    print(_speed);
  }
}

//late combined with null can server as assignable constant that can be initialized once.

class A {
  final int a;
  int var1;

  A({required ba})
      : this.a = ba,
        var1 = ba {
    //body
    print("$a" + " and " + "$var1");
  }
}

void positionalMandatory(int a, String b) {
  print(a);
  print(b);
}

void positionalOptional([int? a, String? b]) {
  print(a);
  print(b);
}

void namedMandatory({required int a, required String b}) {
  //must be passed
  print(a);
  print(b);
}

void namedOptional({int a = 4, String b = '10'}) {
  //pre-initialized
  print(a);
  print(b);
}

void main() {
  //A obj21 = A(ba: 24);
  // print(B.obj1);
  // dynamic s = 'Haseeb';
  // print(s.runtimeType);
  // String? nullableString;
  // String nonNullableString;
  // nonNullableString = nullableString!; //the assertion operator assumes that the nullable string is never null.
  // positionalMandatory(23, 'daddy');
  // positionalOptional(null, 'Hi there from positional optional!');
  // namedMandatory(
  //   b: "This is so lovely",
  //   a: 25,
  // );
  // namedOptional(a: 24); //b is not mandatory to be passed
  // Bus b1 = Bus();
  // b1.accelerate();
  // b1.brake();
  // b1.showSpeed();

  // A obj1 = A();
  // obj1.a = 23; //this will work only once. final intialization is done only once
  // print(obj1.a);
  // //obj1.a = 21; //this is dangerous and can throw an exception. and it did throw an exception
  // print(obj1.a);
  // C obj1 = C();
  // print(obj1.d1);
  // obj1.printer();
  var setA = {2, 41, 4};
  final List<int> bounds = [1, 2, 3, 4];
  //an error occures and this is because the list is final and final can only be initalized once you can add but not reassign this list. bounds = [12, 123];
  bounds.add(21);
  bounds.add(23);
  print(bounds);
  print(setA);
}

// class C {
//   late int i = temp();
//   double d1 = 21.3;

//   int temp() => 74;
//   void printer() {
//     print("$i and $d1");
//   }
// }
