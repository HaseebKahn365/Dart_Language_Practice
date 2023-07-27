void main() {
  const Person = {
    'name': 'John',
    'age': 30,
  };
  print(Person['address']);
  if (Person['city'] == null) {
    print('City is missing');
  }
  //variable are non nullable by default

  // int age = null;
  int? a;
  int b = 5;
  a = 9;
  //print(a + b); //no null check required after assigning value
  // ignore: unnecessary_null_comparison
  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  } //definite assignment
}
