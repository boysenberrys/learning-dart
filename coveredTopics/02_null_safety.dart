//? In flutter, nothing can be null unless you explicitly say it can.
void main(List<String> args) {
  // String name = "Allice"; //This will NEVER BE NULL
  // String? username = null;

  // print(username);

  //??

  //! Dart give you shortcuts for dealing with null. "?? - if null, use this instead"

  String? nickname;
  String display = nickname ?? "No nickname";
  // ?? - we can call it fallback if nullable.
  print(display);

  //! ?- Only call this if not null
  print(nickname?.length);

  //? "!"- I promise this is not NULL, (use it carefully)
  String? schoolName = "Jackson";
  // print(schoolName!.length);

  late String buscolor;
  buscolor = "green";

  print(buscolor);
}
