class A {
  final int a;
  final int b;
  A({required this.a, required this.b});
  A.zero()
      : a = 0,
        b = 0;
  String toString() {
    return 'This is A! { a= $a and b= $b}';
  }

  A.fromJson({required Map<String, int> json})
      : a = json['a']!,
        b = json['b']!;
}

class Singleton {
  Singleton._privateConstructor(); //this is the private constructor for our class to which
  static final Singleton _instance = Singleton._privateConstructor(); //this is the only instance that will be returned.
  factory Singleton() => _instance; //this is the default factory constructor.
}

class constantClass {
  const constantClass();
}

class Point {
  final int x, y;

  Point({required this.x, required this.y});

  factory Point.random({required bool anyThing}) {
    //named constructor
    int randMin = 10;
    int randMax = 20;
    return anyThing ? Point(x: randMin, y: randMax) : Point(x: 0, y: 0);
  }

  @override
  String toString() {
    return 'x =$x and y= $y';
  }
}

class car {
  car() {
    count++;
  }
  late int age;
  set manufacturedYear(int value) => age = 2023 - value;
  static late int count = 0;
  static void callCount() {
    print('currently we have $count cars!');
  }
}

void main() {
  // var a = A(a: 21, b: 42);
  // var b = A.zero();
  // var c = A.fromJson(json: {'a': 23, 'b': 31});
  // print(b);
  // print(c);
  // print(a.hashCode);
  // print(a.toString());cmd
  var c = Point.random(anyThing: true);
  print(c.toString());

  var s1 = Singleton();
  var s2 = Singleton();
  var s3 = Singleton();
  print(identical(s2, s3));
  print(identical(s1, s2));
  var c1 = const constantClass();
  var c2 = const constantClass(); // we have to prefix the variables with const for effienct object creations/
  print(identical(c1, c2));
  car C1 = car();
  C1.manufacturedYear = 1998;
  print(C1.age);
  car c4 = car();
  print(c4);
  car.callCount();
}
