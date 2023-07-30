Stream<String> fizbuzStreamGenerator(int n) async* {
  //this is a stream that takes up an integer as a limit. it has async* because stream
  for (var i = 0; i <= n; i++) {
    if (i % 3 == 0) {
      await Future.delayed(Duration(milliseconds: 500));
      print('$i fizz');
      yield i.toString() + ' fizz '; //The stream has a return type of string which means that we must yield a string
    } else if (i % 5 == 0) {
      await Future.delayed(Duration(milliseconds: 200));
      print('$i buzz');
      yield i.toString() + ' buzz ';
    }
  }
}

Future<String> stream2String(Stream<String> stream) {
  //this function should return a string of all the values in the stream.
  return stream.reduce((previous, element) => previous + element);
}

//its not the most complete fizzbuzz algorithm but it does the job;

Future<void> main() async {
  Stream<String> stream1 = await fizbuzStreamGenerator(15); //creating a strea variable that will
  String result = await stream2String(
      stream1); //passing the stream to a Future<String> processor which will return a consolidated and unified string
  print(result); // here we can now print the stream.
}
