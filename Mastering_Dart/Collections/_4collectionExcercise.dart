//Excercise

// map of pizzas and prizes:

import 'dart:io';

Map<String, double> pizzas = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
  'hawaiian': 8.5,
  'cheese': 4.5,
};

List<double> boughtPrizes = [];

void main() {
  print('select a pizza you want to buy and q to quit');
  int i = 1;
  for (var key in pizzas.keys) {
    print('$i. $key');
    i++;
  }
  var input = stdin.readLineSync();
  while (input != 'q') {
    switch (input) {
      case '1':
        print('you selected margherita');
        boughtPrizes.add(pizzas['margherita']!); //this will add the price of margherita to the list
        print(pizzas['margherita']!); //this will print the price of margherita1
        break;
      case '2':
        print('you selected pepperoni');
        boughtPrizes.add(pizzas[
            'pepperoni']!); //shame on you Github copilot. you cannot even suggest the correct syntax. you should have use the keys instead of values of pizzas
        break;
      case '3':
        print('you selected vegetarian');
        boughtPrizes.add(pizzas['vegetarian']!);
        break;
      case '4':
        print('you selected hawaiian');
        boughtPrizes.add(pizzas['hawaiian']!);
        break;
      case '5':
        print('you selected cheese');
        boughtPrizes.add(pizzas['cheese']!);
        break;
      default:
        print('invalid choice');
    }
    input = stdin.readLineSync();
  }

  double sum = 0;
  for (var item in boughtPrizes) {
    sum += item.toDouble();
  }

  print('The total price is:  $sum');
}
