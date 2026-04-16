//FUTURES(Promises)
import 'dart:async';

void main() async{
  //is the class that make sure function complete on the future. It help you perfom task with multiple executions.
  print(await printCity());
  print(await returnNumbers());

}

Future<String>getFullName({
  required String firstName,
  required String lastName,
}){
  if(firstName.isEmpty || lastName.isEmpty){
    throw firstOrLastNamemissingException();
  } else{
    return Future.value("$firstName $lastName");
  }
}


Future<String> giveResult(){
  return Future.delayed(Duration(seconds: 5), (){
    return "Hey there, this is me from the future";
  });
}

Future<String>returnNumbers()=>
   Future.delayed( const Duration(seconds: 3), 
  ()=>"555-7767-435");



Future<String>printCity() async{
  await Future.delayed(const Duration(seconds: 2));
  return "New york";
}

class firstOrLastNamemissingException implements Exception{
  const firstOrLastNamemissingException();
}