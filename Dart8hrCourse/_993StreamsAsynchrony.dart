//Streams are similar to iterables in the synchronous workflows the only difference being that the stream returns values asynchrnously while the iterable does it synchronously
//Stream of water
//contains boats as values.
//The stream authority is called the stream builder.
//A stream subscription listens to the stream.
//IF there are multiple listeners to a single stream then the stream has to be a broadcast stream.

import 'dart:async';

Future main() async {
  // Stream.periodic(
  //     const Duration(
  //       milliseconds: 5000,
  //     ),
  //     (x) => x).listen(print); // this is actually quite similar to the then of the future

  // Stream.periodic(
  //     const Duration(
  //       milliseconds: 10000,
  //     ),
  //     (x) => -x).listen(print); // this is actually quite similar to the then of the future

  // Stream.fromFutures([
  //   Future(() => 3).then(print),
  //   Future(() => 4).then(print),
  //   Future(() => 5).then(print),
  // ]);

  // final StreamController streamController = StreamController<int>.broadcast();
  // var value = 0;
  // final streamSubscription = streamController.stream.listen(
  //     print); //this is getter returning a stream. we also need to stop listening to the stream after sometime. so value can be assigned

  // // final streamSubscription2 = streamController.stream.listen(print);

  // Timer.periodic(const Duration(seconds: 1), (timer) {
  //   //this timer will execute the callback for every second indefinitely.
  //   if (value == 5) {
  //     timer.cancel();
  //     streamController.close();
  //     streamSubscription
  //         .cancel(); //if the variable is still listening to the closed stream it will lead to memory leaks. so unsubscribe the stream as well.
  //   } else {
  //     streamController.add(value++);
  //   }
  // });

  // var max = 0;

  // await for (final value in streamController.stream) {
  //   max = (value > max) ? value : max;
  // }
  // print('Max is --> $max');

  asyncGenerator().listen(print);
}

//as we were able to create an iterable of multiple values we can do the same with streams.by using async generator function

var negativeStream = Stream<int>.periodic(const Duration(seconds: 1), (x) => -x);

Stream<int> asyncGenerator() async* {
  //asynchronous iterators
  for (var i = 0; i < 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }

  yield* negativeStream;
}


//EVENT: 5 4 3  
//OUTPUT: 3 4 5