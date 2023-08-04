void main() {
  var list = [1, 1.3, 1];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  List<Person> personList = [];
  personList.add(Person(name: 'Haseeb'));
  personList.add(Person(name: 'Khan'));

  personList.forEach((element) {
    print(element.toString());
  });
}

class Person {
  final String name;
  Person({required this.name});

  @override
  String toString() {
    return this.name;
  }
}
