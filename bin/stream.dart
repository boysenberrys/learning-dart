void main(List<String> args) {
  //A Future gives one value once. A Stream gives multiple values over time:

  Stream<int> countDown() async* {
    for (int i = 5; i >= 0; i--) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  Future<void> main() async {
    await for (int value in countDown()) {
      print(value);
    }
  }

  main();

  //async* marks a stream function. yield sends a value without stopping the function — unlike return which ends it.
  //Think of a Stream like a tap — water keeps flowing until you turn it off. In Flutter, streams power real-time features like live chat, location updates, and sensor data.
}
