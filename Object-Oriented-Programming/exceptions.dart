void main(){
  //exception handling- used to handle errors.
  try{
    print(10~/0);
  } on Exception catch(e){
    print(e);
  } catch (e){
    print("An Error occurred");
  }
  print("Boysen");
}