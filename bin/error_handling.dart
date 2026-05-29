//Future can fail. Always handle errors.
void main(List<String> args) {
  Future<String> fetchData() async {
    throw Exception("Network error"); //simulating failure
  }

  Future<void> main() async {
    try {
      String data = await fetchData();
      print(data);
    } catch (e) {
      print("Something went wrong: $e");
    }
  }

  //try/catch around await catches any errors the Future throws. Without this, an error crashes your app.

  main();
}
