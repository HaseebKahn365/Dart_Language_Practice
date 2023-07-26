void main() {
  const name = 'Haseeb';
  const age = 20;
  sayHi();
  // introduce(name, age);
  // introduce('Abdul Haseeb', 19); //positional arguments: must be in the same order
  print(introduce('Abdul Haseeb', 10));
  final personIntroduction = introduce(name, age);
  print('using final: $personIntroduction');
}

String introduce(String name, int age) {
  return ('My name is $name and I am $age years old');
}

void sayHi() {
  print('hi');
  print('welcome');
}
