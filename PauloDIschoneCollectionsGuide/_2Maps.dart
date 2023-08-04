void main() {
  final Map<int, String> map1 = {};
  map1.addAll({1: 'Abdul Haseeb'});
  map1.addAll({2: 'Abdus Saboor'});
  print(map1);

  map1.forEach((key, value) {
    print(key);
    print(value);
  });
  var men = map1.values.toList(growable: true); //returns iterable but we can get the list too by .toList
  print(men);
}
