void main(){
  //calling class are just similar as calling function
 Cookie().baking();
 Cookie cookie = Cookie();
 print(cookie.shape);
 print(cookie.size);
}



//what is class? == a class is the template of creating an object.
//In class, we are using PascalCase not camelCase.
class Cookie{
  //class might contain VARIABLES or FUNCTIONS which are known as methods.

  //variables
  String shape = "Circle";
  double size = 15.2; //cm

  //functions OR method when it is inside the class;
  void baking(){
    print("baking has started");
  }

  bool isCooling(){
    return false;
  }

}