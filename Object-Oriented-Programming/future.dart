//FUTURES(Promises)
void main(){
  //is the class that make sure function complete on the future. It help you perfom task with multiple executions.
  giveResult().then((val){
    print(val);
  });

  print("Hey");
  print("Hello");
  print("Greeting"); // this form is the blocking form of syncronous operation.
}

Future<String> giveResult(){
  return Future.delayed(Duration(seconds: 5), (){
    return "Hey there, this is me from the future";
  });
}