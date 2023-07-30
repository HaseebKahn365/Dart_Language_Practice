Future<int> sumStream(Stream<int> stream) async {
  //this can recieve a stream from a loop as well as from the iterable.
  var sum = 0;
  await for (var value in stream) {
    //wait for each value to be available
    sum += value;
  }
  return sum;
}

Future<int> sumStream2(Stream<int> stream) {
  return stream.reduce((previous, element) =>
      previous + element); //the reduce method already waits for the elements. so we don't have to use async and await.
}

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Iterable<int> count(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final stream2 = countStream(5);
  final sum = await sumStream(stream2);
  print(sum);
  final sum2 = await sumStream2(stream);
  print(sum2);
}
