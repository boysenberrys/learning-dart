void main(){
  var name = printName();
  print(name);
  //printi function direct;
  print(printNumber());

  print(callMyName());

  meAmigo();


  var mixed = mixedValue();
  print(mixed.$2);
  // //or you can destructure;

  var (age, displayname, isAdult, greetings) = mixedValue();
  print("${name}, ${displayname} ${isAdult}, ${greetings},");


  //position arguments
  FuncName(name: "Boysen", age: 25, greeting: "Helloboysen");

  //when some arguments are options;
  FuncName2(age: 25, name:"boysen");

  //mixed function
 funcName3(25, true, name: "boysen", email: "boysen@gmail.com", bodyWeight: 64);

 //shortHand Function
 print(shortFunc());
}


(int, String, )printName(){
  return(12, "Boysen");
}

(int, String, bool, String) mixedValue(){
  return(12, "boysen", false, "Hello");
}

int printNumber(){
  return(23);
}

String callMyName(){
  return("Hello Boyseeeeen!");
}

void meAmigo(){
  print("Yo soy Mexicana abuelo!");
}

//named arguments
//all required;
void FuncName({required String name, required int age, required String greeting}){
  print(name);
  print(age);
  print(greeting);
}

//if argument are optional
void FuncName2({String? name, required int age, String?greeting}){
print(name);
print(greeting);
print(age);
}

//you can have position and named argument together in a single function

void funcName3(int age, bool isAdult,{required String name, int?bodyWeight,required String email}){
 print("Hello, your name is ${name} and you are ${age} years old with body weight of ${bodyWeight}kg");
}

//Returning function;
//you can else return a function:::
Function doubleFunc(){
  return(){
    print("return a function");
  };
}

//shorthand function
String shortFunc()=> "hello";