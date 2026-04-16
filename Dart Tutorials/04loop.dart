void main(){
  //Loops;
  //01: FOR LOOP;
  //in (for loop) you have to supply three values. 
  // 01: integer value;
  // 02: Condition value;
  // 03: Increement value;
  //How they work;
  // (int value bring the first foundation stone, it is not a principle to put it in 0, you can literraly begin at any number;) >> the come (condition value: This make code run while this condition is true) >> and then come (increment/decreement value ++/--: This value eith make increment or decreement until it is terminated by CONDITION VALUE)
  for(int i=0; i<=10; i++){
    print(i);
  }

  for(int i = 2000; i<=2026; i++){
    print(i);
  }

  //WHILE LOOP
  //while loop is the entry control loop, it execute code block when certain condition are true.
  String value = "Hello";
  int i = 0;
  while(i<value.length){
    print(value[i]);
    i++;
  }

  //do while loop.
  //this is a exist control loop, it first execute certain block of code, then it theck the condition if that condition allow the code to keep being executed;
  // example:
  do{
    print(value[i]);
    i++;
  }while(i<value.length);

  //BREAK AND CONTINUE
  //this allow code to break when certain condition are met or code continued.
  for(int i=0; i < value.length; i++){
    if(i == 1 || i==2 || i==3){
      continue; // you can use {break} instead.
    }
    print(value[i]);
  }

}