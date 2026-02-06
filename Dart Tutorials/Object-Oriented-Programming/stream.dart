//Stream help us produce sequence of values over time.
void main(){
countDown().listen((val){
  print(val);
});
}
Stream <int> countDown()async*{
  for(int i=5; i>0; i--){
    yield i;
    await Future.delayed(Duration(seconds:1));
  }
}