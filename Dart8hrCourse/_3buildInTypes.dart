//literals are constant values from which dart can also identify the types of the varibale.
// the arithematic operators are defined in the base num class that is why they can be used between different datatypes.

void main() {
  //num number = 23 / 3;
  String num2 = '2341';
  dynamic num3 = int.parse(num2);
  num2 = num3.toString();
  num3 = double.parse(num2);
  print(num2);
  print(num3);

  //clamping:
  // int var1 = 55;
  // int upperbound = 32;
  // int lowerbound = 17;

  // double num3 = 23.5;
  // double num4 = 45.5;
  // print(num4 ~/ num3); //this will return the integer quotient.

  // print(num3.ceil());
  // print(num4.floor());
  // print(num4.round());

  // String s1 = "aBdul Haseeb";
  // print('This is the uppercase ${s1.toUpperCase()} and this is the lower case ${s1.toLowerCase()}');

  // int newvar = var1.clamp(lowerbound, upperbound);
  // print(newvar);

  String input = "hello,world,HaSeeb,Therfore";

  String properCase = input.split(",").map((word) => word[0].toLowerCase() + word.substring(1).toUpperCase()).join(" ");

  print(properCase); // Output: Hello World

  // String strin = r'''There are so many \n options in dart
  //     this is another line U+1F4A2''' ;

  // print(strin);

  print('THis is the anger \u{1F4A2}');
}
