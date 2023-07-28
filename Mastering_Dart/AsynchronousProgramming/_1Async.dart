import 'dart:async';

Future<String> fetchUserOrder() {
  return Future.delayed(
      Duration(seconds: 1),
      () =>
          'Coffee!' /* throw Exception('We got an exception!') */); //FUture.delayed is a facotry constructor for FUTURE.
}

Future<String> fetchUserOrder2() => Future.value('Cappucino!');
Future<String> fetchUserOrder3() => Future.error(Exception('Out of ingredients'));

Future<void> main() async {
  print('Program started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder2();
    print(order2);
    final order3 = await fetchUserOrder3();
    print(order3);
  } on Exception catch (e) {
    print('Exception caught!: $e');
  } finally {
    print('Program ended');
  }
}
