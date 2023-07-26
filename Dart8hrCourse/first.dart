//Dart : precision. fast. tough. //scallable, maintainable. modifiable.

//Dart is type safe. Static type checking and runtime checking for copilations and runtime fails. This is the sound type system. won't allow to run in these states.

// you can use the dynamic type the analyzer won't care about the type at the anymore

// dynamic b = 3.14;

// calculateArea(b);

//Dart can also use type inference to infer types. it is done statically using the var keyword. var b=3.14 means that it will always remain double.

//however if you use dynamic analyzer the casting will happen at the runtime.

//Dart compiler converts the code into other machine or intermeiate languages that can be run on other platforms. Dart uses different compilers for specific platforms.

//JIT , and AOT compilers for devices and DartDevC and Dart2js for web

//the null safety in dart doesn't allow the null value in the non nullable varibales. all types in dart are non nullable by default.

//the properties of the non nullable types cannot be called upon the nullable types as shown below. common methods are .toString == and hascode

//implicit downcasting is removed for nullable objects. ie we cannot call .tostring on a nullable object. to avoid inconvience you can use as option.

//! this is actualy the assertion operator which assumes that the nullable variable is never gonna be null.

void main() {
  var b = 3.14;
  dynamic c = 3;
  var a; // this will stay dynamic and dart will assign null to it. which is not a good practice, it can be null if you allow it to be.

  print("Hellow world");
  print(a);

  print(b + c);
  //error! b = "st"; // this is because of the static type binding.
  c = 3.14;
  print(c);
  dynamic passenger = 'Hoor';

  //this is the object method check:
  Object? obj;
  obj = 'hi there!';
  showString(obj as String);

  //this is a test for assertion operator.
  int? d = 25;
  d = null;
  d = 21;
  print(d + c);
  final int? df;
  df = null;
  print(df);

  drivig2seater('Haseeb', passenger);

  // List<String>? names = ['haseeb', 'bilal', anon]; actually this means that the list can be null
  List<String?> names = ['haseeb', 'bilal', anon];
  // names = [null, null, null]; it works too.
  // List<String>? nullable = [null, null, ] the list can be null not the elements

  for (int i = 0; i < 3; i++) {
    if (names[i] == null) {
      print('Null value caought on index: ' + i.toString());
    } else
      print(names[i]);
  }
}

dynamic anon = null;

void drivig2seater(String driver1, String? pasenger) {
  if (pasenger == null) {
    print(driver1 + ' is driving alone');
  } else {
    print(driver1 + ' is driving with ' + pasenger);
  }
}

void showString(String s) {
  print(s);
}
