void main() {
  const name = 'Abdul Haseeb';
  const age = 20;
  final person = introduce(name: name, age: age);
  print(person);
  final person2 = introduceNullable(name: null);
  print(person2);
  foo(1, y: 2, z: 3);
  foo(1, z: 3);
}

String introduce({required String name, required int age}) {
  //required named arguments
  return ('My name is $name and I am $age years old');
}

String introduceNullable({name = 'anonymous', int age = 23}) {
  //default values

  return ('My name is $name and I am $age years old');
}

void foo(int x, {int? y, int z = 0}) {
  // positional arguments must come before named arguments
  //optional named arguments
  print('x = $x');
  print('y = $y');
  print('z = $z');
}
