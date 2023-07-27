void main() {
  int? x = null;
  final y = x;
  x = 44;

  // var z = x ?? 0;
  var z = x;
  print('x = $x');
  print('y = $y');
  print('z = $z');

  // const cities = <String?>['London', 'Paris', null]; //may contain nullables;
  // for (var city in cities) {
  //   if (city == null) {
  //     continue;
  //   }
  //   print(city.toUpperCase());
  // }

  const cities = <String?>['London', 'Paris', null]; //may contain nullables;
  for (var city in cities) {
    print(city
        ?.toUpperCase()); //conditional access operator returns null if the value is null used for methods on nullable values
  }
}
