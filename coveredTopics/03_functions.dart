void main(List<String> args) {
  print(describe("Alex", 26));
  print(birthday(name: "Codefather", age: 26));
  print(student(name: "Phillipo", age: 28));
  print(great("Lorenzo"));
  sayHello();

  var counter = makeCounter();
  counter();
  counter();
  counter();
  counter();
  counter();
  counter();

  doTwice(sayHi);
}

//position function:
String describe(String name, int age) {
  return "Hello $name, are you $age";
}

// named functions
String birthday({required String name, required int age}) {
  return "Hello Mr $name congratulation on turning $age years";
}

//Optional named
String student({required String name, int age = 18}) {
  return "Hello $name, welcome to $age years club! you can vote now 🎊";
}

//Explanation:
//? 01.we use curl braces to make function named and 02. we use REQUIRED to make the named required

//ARROW FUNCTIONS
//! When function has only one expression to return, you can simply use arrow functions.

String great(String name) => "Hello $name";

//ANONYMOUS FUNCTIONS
var sayHello = () {
  print("hello");
};

//CLOSURES

Function makeCounter() {
  int count = 0;

  return () {
    count++;
    print(count);
  };
}

// FUNCTION AS PARAMETERS
void doTwice(Function action) {
  action();
  action();
}

void sayHi() {
  print("Hi!");
}
