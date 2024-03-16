/*
<datatype> fnName() {

}
*/ 

// void means you are not returning anything
void main() {
  print(printName());
  //or you can store in a variable
  int name = printName();
  final name = printName(); //it can't change anymore
  var name = printName(); // it can change again
  print(name.$2); //is gonna print the second value of the printName function
  var (age, name, isAdult, greeting) = printName();
  print(name);
  print(age);
  print(isAdult);
  print(greeting);
}


int printName() {
  return 12;
}

//if I wanna return two datatypes from a function

(int, String, bool, String) printName() {
  return (12, 'Rivaan', false, 'Hi');
}

String name = 'Rivaan R.'; //global variable
void main() {
  String name = 'Rivaan R.'; //locale variable, defined and usable only inside this scope
  printName(name);
}


void printName(String name) {
  print(name);
}

//what if I have more than 2 values to give at the function
//POSITIONAL ARGUMENTS
void main() {
  String name = 'Rivaan R.'
  printName(name, 12, 'Hello!');
}

void printName(String name, int age, String greeting) {
  print(name);
}

//NAME ARGUMENTS, you use it when you have more than 2 arguments
void main() {
  String name = 'Rivaan R.'
  printName(name: name, age: 12, greeting: 'Hello!'); //with this syntx I can pass in any order
  printName(greeting: 'Hello!', name: name, age: 12);
  printName(greeting: 'Hello!', name: name); //age no more required
  printName(12, false, greeting: 'Hello!', name: name); //NAME + POSITIONAL
}

void printName({required String name, int? age, required String greeting}) {
  print(name);
}

// POSITIONAL AND NAME ARGUMENTS COMBINED
void printName(int age, bool isAdult, {required String name, required String greeting}) { //you cannot put anything after the {}
  print(name);
}


void main() {
  (int, String) stuff =  printStuff(); 
  //or
  final (age, name) = printStuff();
  print(age);
  print(name);
}
(int, String) printStuff() {
  return(12, 'Rivaan');
}



void main() {
  final stuff = printStuff();
  print(stuff.name);
  print(stuff.age);
}
({int age, String name}) printStuff() {
  return(age: 12, name: 'Rivaan');
}
// in this way we don't have to use .$1, .$2 etc anymore


//let's now return a function from a function
void main() {
  final stuff = printStuff();
  stuff(); //is gonna print 'Yooo'
  //or
  () {
    print('Yooo');
  }();
}
Function printStuff() {
  return () {
    print('Yooo');
  };
}


//considering a function like this
voide main() {
  final name = printStuff();
  print(name);
}
String printStuff() {
  return 'Rivaan';
}
//we can rewrite the function in a shorthened way
String printStuff() => 'Rivaan';




