//operators are special function.

void main() {
  // int a = 5;
  // double b = 23.4;
  // var c = a + b; // Here the + is called from the a operand which is same as b because both are inherited from num class.

  // = list[0] ==1 && list[2] +1/2 ==2;
  // 1. []
  // 2. / multiplicative.
  // 3. Additive +-
  // 4. relational <= >=
  // 5. equality operator == !=
  // 6. logical and or.
  // 7. assignment
  // var p1 = parent(21);
  // var childObj = child1(13);
  // print(childObj + p1);

  //expressions are made from combinations of operators.

  //at first the both the objects are references to different variable tha is why == returned false and identical obviously false.
  //by overloading only == returned true. but identical is still false because they are not pointing to the same object in memory.
  //optimum const objects: by using const constructors. and same values

  var a = A(1, 0);
  var b = const A(1, 0); //even one const will make things point to the same memory. thanks to the const constructor.
  print('obj1 == obj3 ${a == b} ');
  var c = A(1, 0);
  var d = A(1, 0);
  print('printing the equivalence of the c and d: ');
  print(c.hashCode);
  print(d.hashCode);
  print(identical(c, d));
  print('obj1 and obj2 identical: ${identical(a, b)}');
  print('${a.hashCode} and ${b.hashCode}');
}

class parent {
  final int value;
  const parent(this.value);
}

class child1 extends parent {
  final int var1;
  const child1(this.var1) : super(var1);
  //Defining a method to return string:
  String operator +(parent obj) {
    return 'child1() : subobj($var1) sum = (${obj.value}) +($var1) = ${obj.value + var1}';
  }
}

class A {
  final int a;
  final int b;
  const A(this.a, this.b);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is A && other.a == a && other.b == b;
  }

  @override
  int get hashCode => a.hashCode ^ b.hashCode;
}
