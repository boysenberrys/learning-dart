void main(){
  print("Hello world!");
}

class OtherClass{
  bool isEngineWorking = false;
  bool islightOn = true;
  
}

class Vehicle{
  int noOfWheels = 10;
  void accelerate(){
    print("Accellerate");
  }
}

class Car extends OtherClass implements Vehicle{
  

  @override
  int noOfWheels = 4;

  void accelerate(){
    print("Accelerating vehicle hahhaa");
  } 

}

class Truck extends OtherClass implements Vehicle{
 
  @override 
  int noOfWheels = 6;

  void accelerate(){
    print("Accellerate the Truck");
  }
}
