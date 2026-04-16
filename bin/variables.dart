// ? Variables is like a box or container that holds data( a value) in your program.
//*------You give the box name
//*------You put a value inside.
//*------ Later, you can use that name to get or change the value.

//!REAL LIFE EXAMPLES.
//*------Think of a box labeled age.
//*------ Inside the box you put 25.
//*------ Now whenever you say age, Dart knows you mean 25.

//?01-- DECLARING VARIABLE IN DART
//Dart has a several ways to create variables:
//*------Using VAR (Recommended for beginners)
//Dart can automatically guess the type based on the value.

var name = "John"; //String
var age = 25; //Integer(int)
var height = 5.8; //double
var isStudent = true; //bool

//!Important Rule with var: Once you put a value, Dart locks the type.You cannot change the type later.

var score = 95; // Dart decides it's int
// score = "Excellent";   // ❌ ERROR! Cannot assign String to int

//?02-- EXPLICIT TYPE  DECLARATION
//*you tell Dart exactly type the variable will hold.
void explicit() {
  String name = "Aisha";
  int age = 28;
  double salary = 1250000.50;
  bool isMarried = false;

  print("$name, $age, $salary, $isMarried");
}

//?USING final AND const:
//*------final→ Value can be set only once(at runtime);
//*------const→ Value must be known at compile time.

void finalConst() {
  final String country = "Tanzania"; // Can be set once
  const double pi = 3.14159; // Must be known now

  //Example:
  final DateTime now = DateTime.now(); // OK (runtime)
  const DateTime birthDate = DateTime(2000, 1, 1); // OK
}

void main(List<String> args) {}
