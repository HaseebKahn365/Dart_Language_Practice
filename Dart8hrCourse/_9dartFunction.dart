void main() {
  // int Function(int) f1 = show;
  // anotherOne(f1, 33);
  A()();
  // var list1 = ['hel', 'how'].map((String s) => s.toUpperCase() //this is anonymous function.
  //     );
  // print(list1);
  // //requiredpositional
  // fun(12, 44);
  // //OptionalPositional;
  // fun2(41);
  // //requiredNamed:
  // fun3(a: 2, b: 1);
  // //optionalNamed:
  // fun4(); // a is optional and b can be null
  // //hybridNamed:
  // fun5(a: 12, b: 115);
  // var car = make('ROllsroice'); //car is a function object
  // print(car('m5')); //calling the car variable with M5

  // var car2 = make('Tesla');
  // print(car2('Dual Motor'));

  final showFun = show12(one: 1);
  print(showFun); //its a closure not a returned value
  print('returned from MajFun1: ${showFun(3)}');
}
//Lexical Scope

String Function(String) make(String carName) {
  var engine = '4.4 V8';
  return (model) => '$carName $model $engine';
}

int Function(int) show12({required int one}) {
  int two = 2;
  return (three) {
    print(one);
    print(two);
    print(three);
    return three;
  };
}

// String applyUppercase(String s) {//no parenthesis required
//   return s.padLeft(10, '*');
// }

//required positional  parameters

void fun(int a, int b) {
  print('$a $b');
}

//optionalPositional
void fun2([int a = 12, int? b]) {
  print('$a $b');
}

//RequiredNamed:
void fun3({required int a, required int b}) {
  print('$a $b');
}

//OptionalNamed:
void fun4({int a = 21, int? b}) {
  print('$a $b');
}

//HybridNamed
void fun5({required int a, int b = 31}) {
  print('$a $b');
}

class A {
  //creating a function
  void call() {
    print('im a brand new class call');
  }
}

int show(int a) {
  return a;
}

void anotherOne(int Function(int) f, int b) {
  print(f.call(b));
  print(f(23));
}
