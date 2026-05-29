void main(List<String> args) {
  //Future represnt value that does not exist yet, but will exist at some point. Like ordering food - you don't have it now, but you will.

  Future<String> fetchUsername() {
    return Future.delayed(Duration(seconds: 3), () => "Jackson");
  }

  // fetchUsername().then((data) {
  //   print("Hello $data");
  // });

  // print(
  //   "This prints first",
  // ); //This printing first because of async await does not exist, but with async await, the code bellow wait until code inside async has been executed

  //?WITH ASYNC/AWAIT

  Future<void> main() async {
    String name = await fetchUsername();
    print("Hello $name");
    print("This prints after");
  }

  main();

  //async marks a function as asynchronous — it can contain await.await pauses execution inside that function only until the Future completes. The rest of your app keeps running.Why Flutter cares: Every API call, database read, file operation returns a Future. You'll write await dozens of times a day.
}
