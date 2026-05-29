void main(List<String> args) {
  driveRwoSeatedCar("Emma", "Elisha");
}

void driveRwoSeatedCar(String driver, [String? passenger]) {
  if (passenger != null) {
    print('$driver will cruise with $passenger today!');
  } else {
    print('$driver will cruise alone today!');
  }
}

void positionMandatory(int a, int b) {}
void positionOptional([int? a, int? b]) {}
void namedMandatory({required int a, required int b}) {}
void namedOptional({int a = 4, int b = 10}) {}
