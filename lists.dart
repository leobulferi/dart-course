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
  print(filteredStudents);

  //or
  List<Student> filteredStudents = [];
  for(final student in students) {
    if(student.marks >= 20) {
      filteredStudents.add(student);
    }

  }
  print(filteredStudents);

  //or

  final filteredStudents = students.where((student) => student.marks >= 20);
  print(filteredStudents.toList());


  //ADDITIONAL METHODS WITH LISTS

  students.reversed; //print the list at reverse

  students.addAll([]);
}




class Student {
  final String name;
  final int marks; 

  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name'; 
}





//SETS -> it removes all the duplicates from a lists
void main() {

  final sonalStudent = Student('Sonal', 40);

  Set<Student> students = {
    Student('Naman', 20),
    Student('Rakesh', 30),
    Student('Rivaan', 10),
    sonalStudent, sonalStudent, sonalStudent //it just print out one, it removes all the same element except one
  };
 
  print(students.toSet); // for converting a list to a set
}


//MAP -> collection of key value pair
/* 
{
  'key' : 'value',
  'key2' : 'value2',
}
*/
void main() {

final list = [10, 15, 30];

Map<String, int> marks = {
  'Rivaan' : 10,
  'Naman' : 15,
  'Other Kid' : 30,
};

print(marks['Rivaan']?.isEven); //so that if the key doesn't exist it returns null
}


Map<int, String> marks = {
  10: '10',
  20: '15',
  30: '30',
};
marks[40] = '200';

marks[10] = '100';

marks.addAll({
  40: '45',
  50: '65',
  70: 'hello',
});
//or 
final anotherMap = {
  40: '45',
  50: '65',
  70: 'hello',
};

marks.addAll(anotherMap);

marks.remove(10);

for(int i = 0; i< marks.length, i++){
  print(`${marks.keys.toList()[i]} : ${marks.values.toList()[i]}`); //instead of marks[i] for iterating
}

marks.forEach((key, val) {
  print(`$key : $val`);
});


Map<String, List> marksUserA = {
  'Math' : 20,
  'English' : 20,
  'CS' : 20,
};

List<Map<String,int>> marks = [
  {
  'Math' : 20,
  'CS' : 20,
  'English' : 15
  },
  {
  'Math' : 10,
  'CS' : 15,
  'English' : 15
  },
  markUserA
];

marks.map((e) {
  print(e);
}).toList();

marks.map((e) {
  e.forEach((key, val) {
    print(`$key : $val`);
  })
}).toList();