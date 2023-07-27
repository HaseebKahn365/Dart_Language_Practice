class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() {
    print('Animal is sleeping');
  }
}

class Dog extends Animal {
  //Dog({required super.age}); //calling a super constructor in the initalizer list;
  Dog({required int age}) : super(age: age);

  void bark() {
    print('Dog is barking');
  }

  @override
  void sleep() {
    super.sleep();
    print('The dog is sleeping');
  }
}
