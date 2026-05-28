abstract class Vehicles {
  String brand;
  int year;

  Vehicles(this.brand, this.year);

  void describe();
  void age() => print(2026 - year);
}

class Car extends Vehicles {
  int doors;
  Car(super.brand, super.year, this.doors);

  @override
  void describe() {
    print("The car is of brand: $brand of $year and have $doors doors");
  }

  Car.sedan(super.brand, super.year) : doors = 4;
}

class ElectricCar extends Car with ChargingBehavior {
  String batteryRange;
  ElectricCar(super.brand, super.year, super.doors, this.batteryRange);

  @override
  void describe() {
    super.describe();
    print(
      "Car has the battery range of $batteryRange brand $brand and year $year",
    );
  }
}

mixin ChargingBehavior on Vehicles {
  void charge() => print("$brand is charging");
}

// class ElectricCar extends Car with ChargingBehavior {
//   MotorVehicle(super.brand, super.year, super.doors, super.batteryRange);
// }

void main(List<String> args) {
  Car myCar = Car("Audi samponera", 2021, 3);
  Car aCar = Car.sedan("Sedan", 2022);
  ElectricCar mySuv = ElectricCar("Ferrari Gosha", 2025, 2, "100067 mv/vh");

  print(aCar.doors);
  myCar.describe();
  mySuv.describe();
  mySuv.charge();
}
