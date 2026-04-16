void main(){

}

abstract class Vehicle{
  void accelerate();
}

class Car implements Vehicle{
  @override void accelerate(){
    print("accelerating");
  }

}

//different between normal class and abstract class is this:
//when you EXTENDS normal class you don't need to ovveride the methods, only you override methods if you implements. 

//But when you extends abstract class or implements abstract class you need to override the methods and you can use variables from parent class inside your methods.

