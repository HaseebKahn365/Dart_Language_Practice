/* Libraries

part partof export

Dart does not offer class private fields but library private fields.

part directive is used in the destination library and the library tag  is removed from the source library and part of "destination library is added".

*/ //introduction.

//Synchronous Workflows:
/*
you can't move to the next one without solving the current box.
if there is a delay in the dart operation then we will wait for the time to finish then execute. this is called async operation. when moving to the next operation

dart is a single thread rogramming language.
Event loop
Event Handler 
Isolate VM heap memory. takes care of the future events in queue that are waiting for the future.
A helper thread is used for isolate. used in garbage collection. 
Parallelism takes care of single threaded issue that limits the exection of a large operation to a single line of execution.
Multiple isolates helps with a huge process.

ITerable is a mroe abstract class and it can traverse its elements using an iterator. iterator(curr, nextItem()). items in the iterable are regenerated. so can't use for loop
iterable.foreach.

we can use an iterable to generate multiple values. T vs iterable<T> in case of synchronous programming
we can use: Future<T> for single return and Stream<T> for returning multiple values.


*/

void main() {
  // print('Sum of 3+5 = ${3 + 5}');
  // Future.delayed(const Duration(seconds: 3), fun);// event handler will take care of this even asynchronous.
  // print('Hellow world!');

  //final a = showNormal(10);
  final a = showGenerator(
      10); //nothing happens because iterable is a lazy loaded. it will be generated only when its element is being accessed.
  a.last; //here it will actually generate the entire iterable.
  a.first; //here the collection is already there so onlu the first elemnt has to be iterated

  final iterable = Iterable<int>.generate(3);
  print('first element of the iterable = ${iterable.elementAt(2)}');
  //this is not asynchrony because it already knows to calculate or generate upto the required element.
}

void fun() {
  print(2 + 1);
}

List<int> showNormal(int n) {
  print('Normal List Started...');
  final list = <int>[];
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    list.add(i);
  }
  print('Normal List has ended...');
  return list;
}

Iterable<int> showGenerator(int n) sync* {
  print('Generator Has started!');
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    yield i;
  }
  print('The generator has ended');
}
