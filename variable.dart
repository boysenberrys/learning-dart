void main(){
  // int age = 40;
  // print(age);

  // int score = 5;
  // print(score);
  // print("_____________"); 
  // score = 10;
  // print(score);

  // int firstvalue = 302;
  // print(firstvalue); 
  int value = 10;
  print(value.isEven);
   
  String name = "boysen";
  print(name.length);


  //changing numbers.
  int number = 20;
  // print(number);
  number = 21;
  print(number);

  String greetings = "Hello world!";
  greetings = "${greetings} it is morning here.";
  print(greetings);

  //TO ADD A DOLAR SIGN IN NUMBER YOU USE A BACKTICK \
  String cart = "\$12";
  print(cart);

  //VAR, final, const.
  var valuesome = 10;
  print(valuesome);

  const someValue = null;

  print(someValue);

  //but you are a programmers, you know the meaning of null, and you don't want it to be displayed to user. SHOW ZERO instead.

  print(someValue?.length??0);
  //using double question mark on the end of the expression and adding number, that number is the one will be diplayed on print statement


  var nemla = "null";
  print(nemla!.length);
  //in this expression, nemla is assigned to "NULL";the exlamation mark is forcing dominant that this value should be NULL. so there is no need of using the exlamation mark at all because the value is not null.

  //TIP: 
  //     (!) is forcing dominant that certain value   can't be null.
  //      (?) is asking if the value is null. example: var callME = null; print(callME?.length)
  //     (??0) adding double question mark at the end provide int after question mark, tell dart that if this is null, then display this int object at the instead.

}






// user dart run variable.dart to run the file in terminal

//double first_value = 123.33;
//string name = "boysen";
//int value = 10;

//BOOLEAN VALUE;
bool question = true;
bool reason = false;

//DYNAMIC VALUE
//dynamic can take any kind of value, either int, bool, string, double etc. IT IS REALLY DYNAMIC.

//Dynamic is not recommended in project because of safety;
dynamic somevalue = 10.3;


//Different between VAR, CONST, FINAL;

