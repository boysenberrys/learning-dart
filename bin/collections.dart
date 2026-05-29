//COLLECTIONS. GENERICS & ASYNC.

//! 01- COLLECTIONS- storing and working with groups of data
//! 02- GENERICS - making code work with any type safely
//! 03- Async - doing things that take time without freezing the app.

//without those three, flutter app is just a static screen. The moment you fetch data, show a list, oer wait for anything = you need today's knowledge.

//? LIST
//list is the ordered collections of items.

// names.add("charlie"); // add one item in the list
// names.remove("Alice");
// names[0];
// names.length;
// names.isEmpty;
// names.contains("Bob");

//? <String> is the generic type. it tells dart what kind of items the list hold. A List <String> can only hold string items and List <int> can only hold integer values.

//ITERATING
void main(List<String> args) {
  List<String> names = ["Jackson", "Alice", "Bob"];

  for (var name in names) {
    print(name);
  }

  //OR WITH INDEX:
  for (int i = 0; i < names.length; i++) {
    print("$i: ${names[i]}");
  }

  //USEFUL LIST METHODS
  //? 01. MAP
  final newList = names
      .map((name) => name.toUpperCase())
      .toList(); //Transform each item to upperCase and return List

  print(newList);

  //? 02. FILTER (using "where" keyword)
  final longestName = names.where((name) => name.length > 3).toList();

  print(longestName);

  //? 03. FIRST ITEM
  print(names.first);

  //? 04. LAST ITEM
  print(names.last);

  //? 05. REVERSE LIST
  print(names.reversed.toList());

  //! MAP
  print('======== MAP SECTION =========');
  // A map stores key-value pairs. Like a dictionary - you look up a value by its key.

  Map<String, int> ages = {"Jackson": 20, "Alice": 25, "Bob": 30};

  print(ages["Jackson"]);
  print(ages["Alice"]);

  print(ages.containsKey("Bob"));
  print(ages.keys.toList());
  print(ages.values.toList());

  //ITERATING MAPS
  ages.forEach((key, value) => print("$key is $value years old"));

  //! SETS
  // A Set is like a list but no dublicates allowed.

  Set<String> tags = {"Flutter", "dart", "mobile"};
  tags.add("Flutter");
  tags.add("web");
  print(tags.length);

  //! GENERICS
  //You have been using generics already -List<String>, Map<String, int>. All of these are Generics. Now let's understand, what they actually. Generics lets you write cide that works with any type while being type-safe.

  //Without generics - only work for integers
  /*int getFirst(List<int> Items) => items.first;*/

  //With generics - works for any type
  print("+++++++Working with generics++++++++");
  T getFirst<T>(List<T> items) => items.first;

  getFirst<String>(["a", "b", "c"]);
  getFirst<int>([1, 2, 3, 4]);
}
