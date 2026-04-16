void main(){
  var Toyota = Vehicle();
  var isEngineWorking = Toyota.isEngineWorking;
  print(isEngineWorking);

  var posche = Car();
  print(posche.isEngineWorking);
  print(posche.islightOn);
}

class Vehicle{
  bool isEngineWorking = false;
  bool islightOn = true;
  int noOfWheels = 10;

  void accelerate(){
    print("Accellerate");
  }
}

class Car implements Vehicle{
  @override
  bool isEngineWorking = true;

  @override
  bool islightOn = true;

  @override
  int noOfWheels = 4;

  String startsEngine(){
    return("Engine started");
  }

  @override   
  void accelerate(){
    print("Accellerate the car");
  }

}

class Truck implements Vehicle{
  @override 
  bool isEngineWorking = true;

  @override 
  bool islightOn = true;

  @override 
  int noOfWheels = 6;

  @override   
  void accelerate(){
    print("Accellerate the Truck");
  }
}
