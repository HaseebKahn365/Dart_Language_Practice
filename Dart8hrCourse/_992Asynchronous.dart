/*a task that needs to be solved befre moving on to the next one. In asynchronous operation, we can move on to the next operation before the first async. has done its job
a stream is used to emit multiple values in indefinite times. Future does only one task in the future.
Sates of asynchrony:
Unprocessed: waiting for the event loop to process it.
Uncomplete: it is in the event looop and doesn't have the calculated result. this part is not there for the synchronous ops.
Completed with value: successfully arrived value.
Completed with error: threw an error. */

Future main() async {
  // print('Begin');

  // Future(() => 1).then(print); // .onError and .onCompleted methods
  // Future(() => Future(() => 2)).then((print));

  // Future.delayed(const Duration(seconds: 2), () => 3).then(print);
  // Future.delayed(const Duration(seconds: 2), () => Future(() => 4)).then(print);

  // Future.value(5).then(print); //event is placed on the microTask Queue.
  // Future.value(Future(() => 6))
  //     .then(print); //If there is a future in the microTask Queue then it becomes a normal execution in the event loop.

  // Future.sync(() => 7).then(
  //     print); //it takes a function as a parameter.//aka closure this is equivalent to Future.value(7). not placed in a microTask queue.
  // Future.sync(() => Future(() => 8)).then(
  //     print); //This is very similar to the value futres the only difference being that the sync takes a closure/anon function

  // Future.microtask(() => 9).then(print);
  // Future.microtask(() => Future(() => 10)).then(print);

  // Future(() => 11).then((value) => print);
  // Future(() => Future(() => 12)).then(print);

  // print('end');

  // late final int a;
  // print('start');

  // Future(() => 1).then((value) => a = value);

  // print(a);//this causes an exception because the value to the a will be assigned later in the future.

  // print('end');

  late final int a;
  print('start');

  a = await Future(() => 1);

  print(a); //this causes an exception because the value to the a will be assigned later in the future.

  print('end');
}

//READ: //Microtasks and event queues are established.

//MICROTASK:
//EVENT:
//OUTPUT: start 5 7 9 1 6 8  11  10  2 12 3 4


//READ: //Microtasks and event queues are established.

//MICROTASK: 
//EVENT: 
//OUTPUT: 1 15 2 9 14 4 5 6 8 7 10  13 11 12 3

