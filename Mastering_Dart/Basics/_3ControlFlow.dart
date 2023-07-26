//control flow:
// 1. if else
// 2. switch case
// 3. loops
// 4. break and continue
// 5. assert
// 6. try catch finally
// 7. throw
// 8. on
// 9. rethrow
// 10. yield
// 11. async await
// 12. for in
// 13. forEach
//enum:

void main() {
  // int i = 1;
  // while (i <= 5) {
  //   print('*' * i); //we cannot multiply int with string but we can do the reverse. //concatenates the string i times;
  //   i++;
  // }
  // print('done');
  //fizz-buzz problem:
  for (int i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0)
      print('fizz-buzz ' + i.toString());
    else if (i % 3 == 0) {
      print('fizz breaking' + i.toString());
      break;
    } else if (i % 5 == 0)
      print('buzz ' + i.toString());
    else
      print(i);
  }
  print('done');

  const position = positions.firstPosition;

  switch (position) {
    case positions.firstPosition:
      print('1st position 💖😍');
      break;
    case positions.secondPosition:
      print('2nd position');
    case positions.thirdPosition:
      print('3rd position');
      break;
    default:
      print('not in top 3');
  }
}

enum positions { firstPosition, secondPosition, thirdPosition } //i need to take it outside the main function
