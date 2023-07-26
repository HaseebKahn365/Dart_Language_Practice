//Rock paper scissors game

import 'dart:io';

void main() {
  //secrete should be random
  while (true) {
    //just for rock
    print('Enter your choice: ');
    var choice = stdin.readLineSync();
    if (choice == 'rock') {
      print('its a tie');
    } else if (choice == 'scissors')
      print('you lost');
    else if (choice == 'paper') {
      print('you won');
    } else {
      print('invalid choice');
    }
  }
}
