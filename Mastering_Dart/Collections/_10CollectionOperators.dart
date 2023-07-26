void main() {
  const list = [1, 2, 3, 4, 8];
  list.where((value) => value % 2 == 0).forEach(print);
  List<String> names = ['Haseeb Khan', 'Ali', 'Ahmed', 'Hassan', 'Hussain'];
  names
      .where((names) => names.contains('Ha'))
      .forEach(print); //returns a list of names that contain 'Ha' at the same time runs a loop to print the names
  final user = names.firstWhere((element) => element.contains('Khan'),
      /* returns the element if it does contain Khan */
      orElse: () =>
          'Not Found'); //returns the first element that matches the condition otherwise returns the orElse value
  print(user);
}
