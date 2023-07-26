void main() {
  const list = [1, 2, 3];
  list.forEach(print); //passing function as an argument and the value to the pring is privided by the forEach method
  list.forEach((element) {
    //passing a function as an argument
    print(element);
  });

  //
  final List<int> twices = list.map((e) => e * 2).toList();
  print(twices);
}
