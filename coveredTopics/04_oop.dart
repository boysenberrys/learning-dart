// CLASS
//? Everything in flutter is class, all widget and almost everything.
//!CLASS- is the blueprint, it explain what something is and what it can do.

// class Car {
//   //what is car properties
//   String brand;
//   int year;

//   //Constructors
//   Car(String brand, int year) {
//     this.brand = brand;
//     this.year = year;
//   }
// }

// Car myCar = Car("toyota", 2009);

// class Car {
//   String brand;
//   int year;

//   Car(this.brand, this.year);
// }

// class Car {
//   String brand;
//   int year;

//   Car({required this.brand, required this.year});
// }

// Car myCar = Car(brand: "Marcedez benz", year: 2019);

class Phone {
  String brand;
  String company;
  String model;
  int year;
  bool isBoxed = false;

  //General OR main constructor.
  Phone({
    required this.brand,
    required this.company,
    required this.model,
    required this.year,
    required this.isBoxed,
  });

  //named constructors
  Phone.smartphone({
    required this.brand,
    required this.company,
    required this.model,
    required this.year,
    required this.isBoxed,
  });
}

var normal = Phone(
  brand: "Philips brace-culture-9998",
  company: "Phillips",
  model: "PHILLIPS COGC",
  year: 2025,
  isBoxed: true,
);
var iPhone = Phone.smartphone(
  brand: "iPhone",
  company: "Apple",
  model: "iPhone 17 pro max",
  year: 2025,
  isBoxed: true,
);

//INHERITANCE
//?-Inheritance means one class get all properties from another class and can add more on top.

class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});

  void describe() {
    print("$brand, made in $year");
  }
}

class VeCar extends Vehicle {
  int doors;

  VeCar({required super.brand, required super.year, required this.doors});

  void honk() {
    print("$brand goes beep! ");
  }
}

//OVERRIDE @override
//? what if you want a child class to do something differently than the parent?? ---That where override comes in.

class Building {
  void describe() {
    print("I am a house");
  }
}

class School extends Building {
  @override
  void describe() {
    print("I am a school");
  }
}

// ABSTRACT;
//?::::=>== is the class that cannot be instantiated, it exist only to be extended. it defines a contract that subclasses must follow.

abstract class Shape {
  double area();

  void describe() {
    print("I am a shape with area ${area()}");
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

//!HINTS- Shape can't be created directly- Shape() would error. ButCircle and Rectangle both follow the same contract - they both have area().
//?-This is powerful when you want different object to be treated the same way.

//MIXINS
//? Mixins is the way to add capabilities to the class without inheritance. Think of it as plug-in behavior🤦‍♂️

class Animal {
  String name;
  Animal(this.name);
}

mixin CanFly {
  void fly() => print("I am flying");
}

mixin CanSwim {
  void swim() => print("I am swimming!");
}

class Duke extends Animal with CanFly, CanSwim {
  Duke(super.name);
}

Duke duke = Duke("Kasongo");

void main(List<String> args) {
  VeCar myVecar = VeCar(brand: "Subaru", year: 2016, doors: 3);

  myVecar.honk();
  myVecar.describe();
  Building house = Building();
  house.describe();
  School babyschool = School();
  babyschool.describe();
  print(duke.name);
  duke.fly();
  duke.swim();
}
