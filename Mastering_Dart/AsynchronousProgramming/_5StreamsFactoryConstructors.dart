//the stream factory constructors are used to generate streams.

void main() async {
  final Stream stream = Stream.fromIterable({1, 2, 3, 4});
  // Stream.value(10);
  // Stream.error(Exception(
  //     'Something went wrong')); //we know that a furture can complete with an error. similarly a stream can emit error with vlaues.
  // Stream.empty();
  // Stream.fromFuture(
  //   Future.delayed(Duration(seconds: 1), () => 31),
  // );
  // Stream.periodic(Duration(seconds: 1), (element) => element);
  // //There are several methods that can process streams all of which return a Future.
  // final value = await stream.first;
  // print(value); //prints 1 wow 😲

  // await stream.forEach((element) {
  //   print(element); //prints each element from the stream
  // });

  stream.map((event) => event * 2).where((event) => event > 3).forEach((element) {
    //creating a stream subscroption.
    print(element);
  });
}
