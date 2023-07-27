void main() {
  int? maybeValue;

  // ignore: unnecessary_null_comparison
  // int value = maybeValue == null ? 0 : maybeValue;
  // print(value);

  //using if null operator
  //int value = maybeValue ?? 0; // if you want a default value to assign to value if maybeValue is null
  //alternatively we can also use augmented assignment operator

  maybeValue ??= 0; //if null then assign 0 to maybeValue
  print(maybeValue);
}
