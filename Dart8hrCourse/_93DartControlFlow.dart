//Controll flow statements:

// if else
// for loop
// while loop
// break/ continue
// swtich case
// asset
// try throw catch

//enum must be declared outside.

import 'dart:math' as math;

enum days { monday, tuesday, wednesday }

void main() {
  var list = [12, null, 21];

  // for (var i = 0; i < 23; i++) {
  //   print(i);
  // }

  //for in loop for iterating the list elements without the need of index

  // for (var item in list) {
  //   print(' list : $item');
  // }

  //every iterable class also has a for each method

  // list.forEach((element) {
  //   print(element);
  // });

  // list.forEach(print);
  // int i = 0;
  // while (5.isOdd) {
  //   i++;
  //   print('hi $i');
  // }
  //

  switch (days.monday) {
    case days.monday: //these are called case clauses.
      print('case key is Monday');
      continue tue;
    tue:
    case days.tuesday:
      print('case fem Tuesday');
      break;

    default:
      print('none were matched');
  }

  var list1 = [];

  assert(list1.isEmpty, 'List must not be empty!');

  list.where((element) => element != 1)..forEach(print);
  int min = -1, max = 2;
  int zero = min + math.Random().nextInt(max - min);
  print('Random $zero');

  try {
    if (zero < 0) {
      throw NegativeValue(message: 'Negative Value');
    } else if (zero > 0) throw PositiveValue(message: 'Positive thrown');
  } on NegativeValue catch (e) {
    print('The value is negative: ${e.message}');
  } catch (e) {
    if (e is PositiveValue) {
      print('The value is positive: ${e.message}');
    }
  } finally {
    zero = 0;
    if (zero == 0) print('Yes it is equal to 0');
  }
}

class NegativeValue implements Exception {
  final String message;
  NegativeValue({required this.message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}
