void main(){
  final cookie = Cookie("Circle",23.2);
  print(cookie);

}

class Cookie {
   //constructor:- it look like the function, but the different is, there is no name to specify like, string, bool, void, etc.

  String shape;
  double size;
  //constructor name should be the same as the class name, otherwise: expect error in the code.
  Cookie(this.shape,this.size){
    print("Cookie constructor called");
    baking();
  }
  //if you don't want varible to be changed use
  // final Shape;
  // final Size;
  
  //if you have many instances to be taken in contructor function; use the same rule as constructor
  //Cookie({required this.shape, required this.size})


  //Methods;
  void baking(){
    print("Baking has started");
  }

  bool isCooling(){
    return false;
  }

  //type of constructors.
}

