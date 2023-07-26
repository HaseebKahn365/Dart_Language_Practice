void main() {
  const list = [1, 3, 4, 5, 6];
  final odd = where<int>(list, (element) {
    return element % 2 != 0;
  });
  print(odd);
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var results = <T>[];
  for (var item in items) {
    if (f(item)) {
      results.add(item);
    }
  }
  return results;
}
