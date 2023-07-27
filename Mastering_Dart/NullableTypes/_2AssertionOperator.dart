void main() {
  int x = 33;
  int? maybeValue;
  if (x > 0) {
    maybeValue = 5;
  }
  int value = maybeValue!; //assertion operator. We ensure that maybeValue is not null
  print(value);
}
