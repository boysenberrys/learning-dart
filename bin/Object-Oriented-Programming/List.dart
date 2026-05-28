void main(){

  List <Student> students = [
    Student("Boysen", 10),
    Student("Naman", 20),
    Student("Rakesh", 30),
    Student("Somal", 40),

  ];

  print(students[3]);
  students[4]= Student("Lightness", 90);

  students.add(Student("Lightness",100)); //this add "Lighteness to the end of list".

  students.insert(0, Student("Iddi", 80)); //this is a position parameter, it add Iddi at the beginning of list.

  students.remove(Student("Naman", 40));//this won't work because they are of two different instances. INSTEAD. use this

          //create: final namanStudent = Student("Namaan");
          // UPDATE LIST.
          //List <Students> students = [
          // rivaanStudent,
         // Student("Boysen"),
         // Student("Naman"),
         // Student("Rakesh"),
         // Student("Somal"),]

  //students.remove(Student(rivaanStudent));



  // 1. A new list of students empty
  // 2. Run a for loop
  // 3. check if the grade of 1 student is greater than 30.
  // 4. if true, add student to my new list
  // 5. print list out for loop

  List <Student> filteredStudents = [];
  for(int i=0; i<students.length; i++){
    if(students[i].marks >=20){
      filteredStudents.add(students[i]);
    }
  }

  print(filteredStudents);

  //Using FOR IN loop;
  for(final student in students){
    if(student.marks >20){
      filteredStudents.add(student);
    }
  }

  //using where. this filter the list and return the required list.
  final NewfilteredStudents = students.where((student)=> student.marks>20);

  print(NewfilteredStudents.toList()); //this will return list of students passed the required principles.
}

class Student <T>{
  final T name;
  final int marks;

  Student(this.name,this.marks);

  @override
  String toString()=> "Student: $name";
}

//OTHERS LIST METHODS:
              // students.length - return the length of list
              //students.reversed.toList()- return list in reverse
              //students.first - provide a first element
              //student.isEmpty - return bool if list is empty.
              //students.addAll()- add all iterables in the list.
              //.contains: check specific element if present
              //.indexOf ; TO CHECK THE INDEX OF CERTAIN ELEMENT
              //.firstWhere
              //.lastWhere