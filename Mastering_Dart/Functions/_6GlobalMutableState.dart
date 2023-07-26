var counter = 0;

void foo() {
  counter++;
  print('*' * counter);
} //this is not a pure function. it mutates the global state every time it is called

void main() {
  foo();
  foo();
  foo();
}
