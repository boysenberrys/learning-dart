void main(){
  //Map is the collection of key with values.like objects in java and dictionary in python.
  Map marks = {
    "Rivaan":10,
    "Naman": 15,
    "Other KId": 30,
  };

  print(marks["Rivaan"]);

  //To add auto suggestion we need to add the <string int> in the list naming.

  Map<String, int> studentMrak={
    "Rivaan":10,
    "Naman": 15,
    "Other Kid": 30,
  };

  // Adding values:
  marks[40]= "200";
  //it check is key is already present, if not, it add, if yes it update.

  //you can use . operators just like in JS.
  marks.addAll({
    "Yohana":65,
    "Junior": 78,
    "stalker": 56,
  });
  //by using addAll method, you can add a paor of key and values in tyhe map collection.
  for(int i=0; i<marks.length; i++){
    print(marks.keys.toList()[i]);
  }

  //iterate with for each
  marks.forEach((key, val)=>print("$key: $val"));
  
}

