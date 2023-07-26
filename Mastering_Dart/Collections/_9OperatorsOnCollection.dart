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
  final Squares = transform(list, (x) => x * x);
  print(Squares);
}

List<int> transform(List<int> items, int Function(int) f) {
  //the function can be passed as an argument
  var result = <int>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
