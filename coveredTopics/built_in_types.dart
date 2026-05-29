void main(List<String> args) {
  //?DART-BUILT IN TYPES

  //*Numbers type(num, int, double)
  //* Int and double are in FACT numbers, meaning that the methods from inside the num class can be accessed completely inside both int and doubles types.

  //* The num type can host both int and double values, the operators and methods inside will work at the same time on both int and doubles.

  int a = 2;
  int b = 5;
  int c = 8;

  //! DOUBLES
  double d = 2.3;
  double e = 1.2;

  //? NUMBERS
  num g = 23;
  num f = 34;

  print(" Total of int + double: ${a + e}");
  print(b + f);
  print(d * c + g);

  //? CHANGING STRING TO NUM, DOUBLE, IN
  String amount = "600";
  int integer = int.parse(amount);
  double y = double.parse(amount);
  num n = num.parse(amount);

  print('this is $amount, $y, $n, $integer');
}
