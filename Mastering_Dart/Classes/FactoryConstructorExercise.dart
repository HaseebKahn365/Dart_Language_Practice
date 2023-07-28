class Person {
  Person(this.name, this.age);
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json) {
    return Person(json['name'] as String, json['age'] as int);
  }

  Map<String, Object> toJson(covariant Person p1) {
    Map<String, Object> m1 = {};
    m1['name'] = p1.name;
    m1['age'] = p1.age;
    return m1;
  }

  @override
  String toString() {
    return 'name: $name age: $age';
  }
}

void main() {
  final person = Person.fromJson({
    'name': 'Haseeb',
    'age': 23,
  });
  print(person);

  final json = person.toJson(person);
  print(json);
}
