void main(List<String> args) {
  //*Dart Variables
  //* Var, Dynamic, final, const

  //? var
  //*var-is the variable which detertmine type of value at a compile-time.
  var vs = "value";
  //* in this **character** variable, you can give it another value but of the **int tye only. character = 6;
  var vi = 5;
  vi = 6;
  vi = 8;
  print("**************Var variable***************");
  print(vi.runtimeType);
  print(vs.runtimeType);

  //*dynamic -:  this is the variable where type of value are determined in runtime, you can asign different type of value to daynmic variable and it will be determined in runtime not compilation time.

  dynamic name = "Boysen";
  print("**************dynamic variable***************");
  print(name.runtimeType);

  //* Final
  //* Final variable is the variable which hold value at the compilation time, value is assigned during compilation process not at declaration state.
  final String statement = callName("boysen");
  print("**************final variable***************");
  print(statement);

  // ! Constant variable---
  //* Constant variable require value to be assigned after declaration for non-nullable value and before initiation for nullable value.
}

String callName(String? name) {
  if (name != null) {
    return ("Hey there, my name is $name");
  } else {
    return ('Welcome to the jungle');
  }
}
