void main() {
  //collection-if
  const extraColors = ['black', 'white']; //must be declared at the top
  final list = [
    'blue',
    'red',
    if (true) 'indigo',
    'green',
    'yellow',
    for (var color in extraColors) color,
  ];
  print(list);
  final list2 = [
    'blue',
    'red',
    if (true) 'indigo',
    'green',
    'yellow',
    ...extraColors
  ]; //the spread operators opens the list items
  //print(list);
  //collection-for
  //list.addAll(extraColors);
  print('list 2' + list2.toString());
}
