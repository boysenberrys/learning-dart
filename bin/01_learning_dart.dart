// ? String set type to string, var let dart figure out type and the it's locked, dynami -don't check the type at all
void main(List<String> arguments) {
  String name = "John";
  var age = 25;
  dynamic anything = "hello";

  print("$name is $age year old and he like saying $anything");

  // FINAL  AND CONST
  final int score =
      10; //? Assigned once- not in compilation time but in run time
  const int numbers = 20; //? must be assinged during complitaion time
  var callme = 20;

  final time = DateTime.now();

  print(time);
}
