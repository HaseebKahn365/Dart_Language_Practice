// A map is a collection that associates keys and values both of which can be of anyType There are two parameters required for the map

void main() {
  // var m1 = {};
  var m2 = {23: 21, 'Hi': 23};

  print(m2);
  var m3 = Map();
  print(m3);
  print(m2[23]!.isEven); //no parenthesis for isOdd required. here two is the key
  m2.addEntries([MapEntry('newKey', 37)]); //Make sure to enclose the values in square brackets.
  m2.addEntries([MapEntry('haseeb', 234), MapEntry(123, 134)]);
  print(m2);
}
