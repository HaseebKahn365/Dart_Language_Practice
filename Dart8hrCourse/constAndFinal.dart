class A {
  //the members/ fields of the class cannot be marked constant. therefore they should be final in case you want to declare a costant constuctor for performance gains.
  //in the following code the constructor is constant and the field is final. this causes a common hashcode in case in passed arguments are exactly the same.
  final List<int> names;

  const A({required this.names}); //the const constructor is required for the intialization.
}

void main() {
  var a1 = const A(names: [1, 2, 3]);
  var a2 = const A(names: [1, 2, 3]);

  print(a1.hashCode);
  print(a2.hashCode);

  // final List<int> rolls = const [1, 3, 4];

  // const ab = [1, 3, 4];

  // print(rolls.hashCode);
  // print(ab.hashCode);
}
