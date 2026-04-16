bool isAdult = false;
void main(){
  //in control flows, we put conditions which restrict our syntaxes. it is like filter, to allow what code to be executed and which one should not be allowed. 

  //IF STATEMENTS
  int age = 20;

  if(age>=18){
    print("The user have age of ${age}, he/she is an ADULT");
  } else {
    print(" The user has the age of ${age}, he/she is a CHILD");
  }

  //if you are checking on two condition use (if) and (else);

  //but when you are checking on more than two condition; use (if), (else if) and (else)

  if(age>=18){
    print("This user is adult, he or she can vote");

  } else if(age >= 15 && age < 18){
    print("if you are living in USA and CANADA, you can vote, please verify your country of residence to proceed");
  } else {
    print("you are not adult enough to vote, please drink water and have some sleep");
  }

  if(isAdult){
    print("you are adult");

  } else if (!isAdult){
    print("You are not adult");
  } else if (age < 14){
    print("You are a baby, drink milk");
  } else{
    print("Sleep");
  }

//LEARNING TIP:
// Just like in any other programming languages like Python and JavaScript, there is ASSIGNMENT AND RELATION OPERATOR; 
// (=) Is the assignment Operator, it assign value to specific variable. E.g var name = "boysen";
// (==): This is relation operator, it compare value and type of the value.

//NOTE: != is not a vice verca of (==), but it is a Vice verca of (=).


// (&&) & (||): These two is common used in programming languages like Dart, Python and JavaScript. (&&) stand for "AND" and (||) stand for "OR";

// in controll flow, if you use (&&)- this means that the both right side and left side condition should be tru;

const name = "boysen";
const job = "Pharmacist";
//const job = "Programmer";

if(name == "boysen" && job == "Pharmacist"){
  print("Yes, that is our boy Boysen🎉");

} else{
  print("Nada!, We don't recognize that fella🙃");
}
//So if you go down and change one condition, it will run the "else" code;

//TERNARY OPERATOR
//Instead of writting a if else statement in multiple line, we can write it in sing line.
var username = "lorenzo";
username.startsWith("l") ? print("lorenzo") : print("not that guy");

//the question mark separate condition, if condition is truthy, the code after question mark get executed, but if condition after parethesis is true, the code get executed.

// Switch statement;
//switch statement is the same as (if else), both are control flow statements.
// in SWITCH we provide the value to be checked and then CASE values compare the SWITCH value and CASE value, if the match, the code is being executed. 

//examples

const Position = "Senior Developer";

switch(Position){
  case "Pharmacist":
    print("The free vacant is ${Position}");
  case "Junior Developer":
    print("The free vacant is ${Position}");
  case "Janitor":
    print("The free vacant is ${Position}");
  case "Data Analyst":
    print("The free vacant is ${Position}");
  case "Senior Developer":
    print("The free vacant is ${Position}");
  default:
    print("We have one open position");
}
}