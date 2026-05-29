void main(){
  final employee1 = Employee("Rivaan", EmployeeType.finance);
  final employee2 = Employee("Boysen", EmployeeType.marketing);
  print(employee1);
  print(employee2);

  employee2.fn();
  employee1.fn();
}

//enum
enum EmployeeType1 {
  swe,
  finance,
  marketing
}

// modification
enum EmployeeType {
  swe(200000),
  finance(250000),
  marketing(150000);

  final int salary;
  const EmployeeType(this.salary);

}

class Employee{
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  // void fn(){
  //   switch(type){
  //     case EmployeeType.swe:
  //       print("Software Engeneer");
  //     case EmployeeType.finance:
  //       print("Finance");
  //     case EmployeeType.marketing:
  //       print("Marketing");
  //   }
  // }

  //we can change method:
  void fn(){
    print(type.salary);
  }
}

