// the null aware dot operator.

void main() {
  //var? a; //a var can't be nullable;
  //print(a!.isEven); // this is a completely differnt thing as it tells dart that i am 100% sure that the a  is not null and call any method.
//   int? a = null;

//   print(a?.isEven);

//   // .. this is called the cascade operator it means that we don't have to repeat the name of the variable.
//   Iterable temp;
  List<int> collection = [41, 3] //there should be no ; to cascade
    ..add(23)
    ..sort()
    ..map((e) => e + 1); //here is the problem we need to assign the list to a list
  // this works but temp = collection.map((e) => e + 1);
  print(collection);
  var strug = collection.map((e) => e + 1).toString();
  print(strug);
// //Spread operator and null aware spread operator: ...

//   List<int> collection3 = [1, 6, 7];
//   List<int>? collection4 = null;
//   print([...collection3, ...?collection4]);

  List<String> submenu = ['foobar1, foobar2'];
  bool check = true;
  List<String> menu = [
    'item1',
    'item2',
    'item3',
    if (check)
      for (var item in submenu) item
  ];

  print(menu);
}
