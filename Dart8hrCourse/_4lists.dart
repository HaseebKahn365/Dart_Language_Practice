//an iterable is a collecdtion of objects that can be iterated;
//a list can be iterated that is why it extends the iterable class.

void main() {
  // List<int> collection = [1, 5, 2, 6, 2, 4, 99];
  // collection.forEach(print);
  // print('Folowing the collection print');
  // print(collection[collection.length - 1]);

  // List<Object?> collection2 = [2, 3.14, null, true];
  // var a = collection2[0] as int;
  // var b = collection2[2];
  // print(a);
  // print(b);

  // List<dynamic?>? collection3 = [23.1, 4, null];
  // print(collection3);
  // // collection3 = null this line indicates that after declaring the list as null you can no longer use the add() method on List.
  // print(collection3);
  // collection3.add(34);
  // print(collection3);

  // list methods

  List<int> collection101 = List.generate(23, (index) => index + 1);
  List<dynamic> collection2 = List.filled(3, 45);
  print(collection101);
  print(collection2);
  collection101 = List.empty();
  print(collection101);
}
