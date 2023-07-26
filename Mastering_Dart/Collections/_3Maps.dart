void main() {
  Map<String, dynamic> map1 = {'name': 'ali', 'age': 20, 'city': 'mardan'};
  // print(map1);
  // var name = map1['name'];
  // print(name);
  // var age = map1['age'] as int;
  // bool isFinite = age.isFinite;
  // print(isFinite);
  // map1['new year'] = 2021;
  // print(map1);
  // //null is returned when the key doesn't exist in the map.
  //Both lists and sets are iterables which means that they can be accessed sequentially.
  // we can't use for in loop in maps because maps are not iterables.

  for (var item in map1.keys) {
    print(item);
  }
  for (var value in map1.values) {
    print(value);
  }
  for (var entry in map1.entries) {
    print('${entry.key} : ${entry.value}');
  }
}
