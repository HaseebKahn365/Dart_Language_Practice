const global = 14;
void main() {
  print(global);
  int a = 34;
  void nestedFunction() {
    print(a);
    print(global);
  }

  nestedFunction();
}
