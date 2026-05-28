// ?Synchronous operation work one step after another. Code is executaed one line after another.

void main(List<String> args) {
  // final a = showNormal(10);
  // print(a);
  
}

List<int>showNormal(int n){
  print('Normal started');
  final list = <int>[];
  for(var i = 1; i<=n;i++){
    print('i -> $i');
    list.add(i);
  }
  print('Normal ended');
  return list;
}

Iterable<int> showGenerator(int n) sync*{
  print('Generator started');
  for (var i = 1; i<=n; i++){
    print('i -> $i');
    yield i;
  }
  print('Generator ended');
}


// ? DART ASYNC

