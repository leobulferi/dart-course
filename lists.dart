void main() {
  //List: ordered collection of objects

  List  list = [10, 20, 30, 'Hello', false]; //because it is a list of dynamic now
  List<double> marks = [10, 20, 30, 40, 20.5];
  List<Student> students = [
    Student('Rivaan'),
    Student('Naman'),
    Student('Rakesh'),
    Student('Sonal'),
    'String',
    4,
    false
  ];
  final student = students[0];
  print(student.name);

  if(student is Student) {
    print(student.name);
  } else {
    print(student);
  }

  print(list);

  final student = Student(20);

  print(student.name);
}

class Student<T> { //in this way it gives me the type of the value I put inside Student()
  final T name;

  Student(this.name);

  void setName(T name) {
    print('New Name: $name');
  }
}








void main() {

  final rivaanStudent = Student('Rivaan', 10);

  List<Student> students = [
    rivaanStudent,
    Student('Naman', 20),
    Student('Rakesh', 30),
    Student('Sonal', 40),
  ];
 
  print(students);

  students.add(Student('New Kid'));
  students.insert(0, Student('New Kid'));
  students.remove(rivaanStudent);


  //1. A new list of students empty
  //2. run a for loop
  //3. Check if the grade of 1 student is greater than 20
  //4. if true. add student to my new list
  //5. print list out of for loop

  List<Student> filteredStudents = [];
  for(int i=0; i<students.length: i++) {
    if(students[i].marks >= 20) {
      filteredStudents.add(students[i]);
    }

  }

}

class Student {
  final String name;
  final int marks; 

  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name'; 
}