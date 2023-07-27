void main() {
  const list = [0, 1, 2, 3, 4];

  final firstEven = firstWhere(list, (x) => x.isEven, orElse: () => 0);
  print(firstEven);
}

T firstWhere<T>(List<T> items, bool Function(T) f, {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item; // it will terminate the fuction if the item found and returned
    }
  }
  return orElse();
}
