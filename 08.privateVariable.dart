//private variable concept: There will come a time in your coding, when you won't need your variable to be eccessed outside of your class. 

//in dart, you can't make variable private outside the class, which is quite different from other programming languages. BUT;
// >>> You can make variable not accessible outside of the file. you use underscore  (const _height)
 void main(){
  final cookie = Cookie(shape: "Circle", size: 23);
  print(cookie);
  print(cookie._height);
 }

 class Cookie{
    final String shape;
    final double size;

    Cookie({required this.shape, required this.size}){
      baking();
      isCooling();
    }

    //methods
    void baking(){
      print("baking started");
    }

    bool isCooling(){
      return false;
    }

    //private variable
    int _height = 23;
    int _width = 4;

    //method
    int calculateSize(){
      return _height * _width;
    }

 }