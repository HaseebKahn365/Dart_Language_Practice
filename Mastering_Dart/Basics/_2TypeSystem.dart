//Dart Type system:
/* Static and Dynamic Languages: 
Static: C, C++, Java, C#, Swift, Kotlin, Go, Rust, Dart
Dynamic: Python, Ruby, JavaScript, PHP, Perl, Lua, Lisp, Smalltalk, R, Matlab, Mathematica, Julia, Erlang, Haskell, Clojure, Groovy, Scala, F#, OCaml, Elixir, dart.

Typer Inference:
var, final, const, dynamic, Object, Null keywords:
*/

void main() {
//TYPE INFERENCE:
  // var name = 'Haseeb';
  // print(name.runtimeType);
  // var age = 19;
  // print(age.runtimeType);
  // var pi = 3.14;
  // print(pi.runtimeType);
  // var isTrue = true;
  // print(isTrue.runtimeType);
  // //variable to be read only:
  // final String name2 = 'Haseeb';
  // final name3 = name2;
  // const String name4 = 'Haseeb'; //compile time constant //must be intialized with constant value
  // const String name5 = name4 + name4;
  // print(name5);

  // const String lovePizza = 'I love pizza';
  // const String topping = ' with cheese';
  // final String favouritePizza = lovePizza + topping;

  // var newText = favouritePizza.replaceAll('pizza', 'chips');
  // print(newText);
  dynamic name = 'Haseeb'; //it helps us to opt out of the type system //dynamic is useful in json parsing
  print(name.runtimeType);
}
