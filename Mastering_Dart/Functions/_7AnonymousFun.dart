typedef Greet = String Function(String); //it is just an alias. a name given to a function
void main() {
  // const name = 'Haseeb';
  final sayHi = (String name) => 'Hi $name'; //anonymous function
  // //sayHi is a reference to the anonymous function;
  // print(sayHi(name)); //closure is an anonymous function with access to the lexical scope
  welcome(sayHi, 'Abdul Haseeb');

  // print(sayHi('haseeb Khan'));
}

//functions are firstclass objects

//passing function to anotehr function:

void welcome(
    Greet greet, //great is a function that is callable by passing String argument
    String name) //the first String is the return type, the second one is argument type of argument greet.
{
  print(greet(name));
  print('Welcome to the course $name');
}
