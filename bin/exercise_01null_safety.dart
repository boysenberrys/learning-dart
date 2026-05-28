void main(List<String> args) {
  String name = "Jackson";
  String email = "jackson@codefather.dev";
  String? nickname;
  int age = 20;
  String? bio =
      "I am Boysen berry, a flutter junior developer and pionner of healthcare mobility";

  var greeting = nickname ?? name;

  print("Hello $greeting hope you are doing great");
  // print(bio?.length);

  print(bio.length);
}
