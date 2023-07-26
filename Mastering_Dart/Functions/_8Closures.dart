void main() {
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((x) => x * multiplier); //the result is an iterable
  print(result);
}
