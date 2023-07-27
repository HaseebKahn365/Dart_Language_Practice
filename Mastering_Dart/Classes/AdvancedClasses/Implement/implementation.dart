//we must override all the methods of the abstracct class when we implement it:

abstract class A {
  void foo();
  void bar() => print('bar');
}

class B implements A {
  @override
  void bar() => print('bar of the subclass');

  @override
  void foo() => print('foo of the subclass');
}

void main() {
  B abdul = B();
  abdul.foo();
}
