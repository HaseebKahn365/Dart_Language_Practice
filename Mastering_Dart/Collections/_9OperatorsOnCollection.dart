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
  final Squares = transform<int, int>(list, (x) => x * x);
  const doubleList = [1.0, 2.0, 3.0, 5.3];
  final doubles = transform<double, int>(doubleList, (x) => (x * 2).round());

  print(Squares);
  print('doubles that are rounded: $doubles');
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  //T causes the function to be generic AKA template function.  T is a type parameter
  //the function can be passed as an argument
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
