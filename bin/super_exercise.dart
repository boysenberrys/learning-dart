class User {
  String name;
  int age;
  String email;

  User({required this.name, required this.age, required this.email});

  void describe() {
    print("Name: $name | Age: $age | Email: $email");
  }
}

Future<List<User>> fetchUsers() async {
  await Future.delayed(Duration(seconds: 2));

  return [
    User(name: "Jackson", age: 20, email: "jackson@dev.com"),
    User(name: "Alice", age: 25, email: "alice@dev.com"),
    User(name: "Bob", age: 30, email: "bob@dev.com"),
    User(name: "Charlie", age: 22, email: "charlie@dev.com"),
    User(name: "Diana", age: 28, email: "dian@dev.com"),
  ];
}

Future<User> fetchUser(String name) async {
  List<User> users = await fetchUsers();

  User? found = users.where((u) => u.name == name).firstOrNull;

  if (found == null) {
    throw Exception("User '$name' not found!");
  }

  return found;

  //users.where((u) => u.name == name) — filters the list, keeping only users whose name matches
  //.firstOrNull — takes the first match, or returns null if nothing matched
  //If null → throw an exception with a clear message
  //If found → return the user
}

Future<void> main() async {
  print("Fetching useres....");
  List<User> users = await fetchUsers();

  for (User user in users) {
    user.describe();
  }

  print("-----------");

  try {
    User user = await fetchUser("Superman");
    print("Found ${user.name}");
  } catch (e) {
    print("Error: $e");
  }
}
