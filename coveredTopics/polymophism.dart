void main(){

}
//polymophism is the state of one object having many form.it is achieved by inheriatance and overriding
class Animal{
  void sound(){
    print("Animal making sound");
  }
}
class Cat extends Animal{
  @override
  void sound(){
    print("Cat making sound");
  }
}

class Dog extends Animal{
  @override
  void sound(){
    print("Dog making sound");
  }
}