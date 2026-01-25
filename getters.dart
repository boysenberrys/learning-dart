//GETTER;
//this is the value we set for read only, which means, It cannot be modified from outside the class. read examples bellow.

void main(){
 final cookie = Cookie(shape: "circle", size: 23);
 print(cookie);

  //getter
  print(cookie.height);
  print(cookie.width);

 //calling setter
 print(cookie.setHeight = 20);
 print(cookie.setWidth = 5);
}

class Cookie{
  final String shape;
  final int size;

  Cookie({required this.shape, required this.size}){
    baking();
    isCooling();
  }


  //methods
  void baking(){
    print("Baking started");
  }

  bool isCooling(){
    return false;
  }

  //Private variable
 int _height = 20;
  int _width = 3;

  //Getters: Must have (get) keyword;
  int get height => _height;
  int get width => _width;

  //setter
  set setHeight(int h){
    _height = h;
  }
  set setWidth( int w){
    _width = w;
  }
}