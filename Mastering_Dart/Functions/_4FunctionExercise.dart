void main() {
  const items = {
    'apple': 3,
    'banana': 4,
    'grapes': 2,
    'orange': 1,
  };
  const bought = ['apple', 'banana', 'grapes', 'orange'];
  var total;

  // for (var buy in bought) {
  //   final price = items[buy];
  //   total += price!; //dangerous approach!
  // }

  total = calculateTotal(listOfItems: bought, items: items);
  print(total);
}

int calculateTotal({required List<String> listOfItems, required Map items}) {
  int total = 0;
  for (var buy in listOfItems) {
    final price = items[buy] as int;
    total += price; //dangerous approach!
  }

  return total;
}

//fat arrow notation will work with single return and single statement functions.  =>
