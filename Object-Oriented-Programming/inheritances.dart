void main(){
  //inheritance
  //Object Oriented Programming
  // final car = Car();
  // print(car.speed);
  // print(car.isLightWorking);
  // print(car.isEngineWorking);
  // print(car.numOfWheel);
  // car.hornSound();

  final van = Van();
  van.hornSound();
  print(van.accelerate());
}

class Vehicle{
  int speed = 10;
  bool isEngineWorking = true;

  int accelerate(){
    return speed+=10;
  }
}
//inheritance happen when one class extend parent class; just like when a child inherit father face, walking style and sound, but some properties can be unique from father, like he can be short, lighskenned and bald. So those new properties exist in child but not in parent.
class Car extends Vehicle{
  int numOfWheel = 9;
  bool isLightWorking = false;

  void hornSound(){
    print("pompoooompoMMMMMMMPOOOOOO");
  }
}

//lets extend car

class Van  extends Car{
  String colorOfVan = "Black";
  String mirrorType = "tintedAlminium";

  bool isPassengerVIP = false;
  int numberOfEngine = 2;
}