void main(){
  // print(constants.greeting);
  // print(constants.bye);

  //calling variables;
  print(Constants.bye); // print(Constants().bye);
  print(Constants.greeting); 
  //calling sttaic function
  print(Constants.giveMeSomeValue());

}


class Constants{
  //static variables
  static String greeting = "Hello, how are you";
  static String bye = "Bye";

  //static functions

  static int giveMeSomeValue(){
    return 10;
  }
}