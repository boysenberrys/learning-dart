// import 'package:dart_school/dart_school.dart' as dart_school;

void main(List<String> arguments) {
  //!GENERICS
  //Without generics, only work for int
  // int getFirst(List<int> items) => items.first;

  //with generics, work for any type:
  T callFirst<T>(List<T> items) => items.first;

  String firstItem = callFirst<String>(["a", "b", "c"]);
  print(firstItem);
  int intItem = callFirst<int>([1, 2, 3, 4]);
  print(intItem);

  //Future &Async/Await
}
