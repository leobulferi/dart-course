//ENUMS
void main() {
  final employee1 = Employee('Rivaan', EmployeeType.swe); //that's the correct way
  final employee2 = Employee('Naman', 'Finance');
  final employee3 = Employee('Sonal', 'ahahaha');

  employee1.fn();
  employee3.fn();
}

enum EmployeeType {
  swe(200000), 
  finance(250000),
  marketing(150000);

  final int salary;
  const EmployeeType(this.salary); //we built a constructor
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch(type) {
      case EmployeeType.swe: //correct way to write it
        print('Software engineer');
      case 'Finance':
        print('Finance');
      case EmployeeType.marketing:
        print('marketing');
      default:
        print('something went wrong')
    }
  }
 //if we want to print all the salary
 void fn() {
  print(`${type.salary}`);
 }

}