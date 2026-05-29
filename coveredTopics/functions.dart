//*Everything in dart is object. Dart functions else is the object
void main(List<String> arguments) {
  var functionObject = first;
  second(functionObject, 5);

  var list = [
    "hello",
    "boysen",
    "miakhalifa",
    "jobs",
  ].map(applyUpperCaseChanges).toList();

  var animous = [
    "jose",
    "johnny",
    "boysen",
    "alex",
  ].map((String s) => s.toUpperCase()).toList();

  print(animous);

  print(list);
}

void second(int Function(int) f, int a) {
  print(f.call(a));
  print(f(a));
}

int first(int a) {
  return a;
}

String applyUpperCaseChanges(String s) {
  return s.toUpperCase();
}
