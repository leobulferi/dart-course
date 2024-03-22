//Inheritance: Multiple classes
void main() {
  //"is-a" relation. Like Car is a Vehicle, so I use inheritance
  Car car = Car();
  print(car.isEngineWorking); //I can acces also the properties and methods of vehicles
  print(car.noOfWheels);

  Truck truck = Truck();
  print(truck.noOfWheels);
  print(truck.isEngineWorking);

  //We can also have
  Vehicle car = Car(); // you can access all the properties of a vehicle but not all the properties for the car. So I have to do like this
  print((car as Car).noOfWheels);

  car.accelerate();
  print(speed); //return 25
}
class SomeClass {
  int speed = 15;

  void accelerate() {
    speed += 30;
  }
}

class Vehicle extends SomeClass{
  int speed = 10;
  bool isEngineWorking = false;

  @override //if we put this is gonna consider this one before the one above
  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle { //whenever we use extends we are extending the functionality of a class to another one
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  } 
}

class Truck extends Vehicle { //whenever we use extends we are extending the functionality of a class to another one
  int noOfWheels = 8;

  void printSomething() {
    print(noOfWheels);
  } 
}








// Implements and abstract classes
void main() {
  final car = Car();
  print(car.noOfWheels);
  car.accelerate();

}

class OtherClass {
  bool isLightOn = true;
  bool isEngineWorking = false;
  
}

class Vehicle{
  int noOfWheels = 10;
  void accelerate() {
    print('accelerating vehicle ahah');
  }

}


class Car extends OtherClass implements Vehicle {  //I have access to OtherClass but I have to implement Vehicle. I can use them together
  @override
  int noOfWheels = 4;

  @override
  void accelerate() {
    super.accelerate();   //it refer to istance classes of the vehicle. U can use it just with extends. You now modify the contents of the parent class in the subclass
    super.isEngineWorking = true;  //with super you can get the value that are inside the extended class. but you can also change the main class here
  }
 
 //now that I use extends and implements I can do
  @override
  void accelerate() {
    print(isEngineWorking);
    print(isLightOn);
    print(noOfWheels);
  }


}

class Truck implements Vehicle { 
   @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int noOfWheels = 6;

  @override
  void accelerate() {
    print('accelerating the truck');
  }

}

class Bike implements Vehicle {

}







//ABSTRACT CLASS
void main() {
  final car = Car();
  print(car.noOfWheels);
  car.accelerate();
}

abstract class Vehicle {
  void accelerate(); //it means that whatever method you define here you can implement it or extend it. You don't necessarily have to define it
  int noOfWheels = 10;
}

class Car implements Vehicle {  
 @override //you must put override with abstract class. With normal class if you didn't override it doesn't give you an error, here yes
 void accelerate() {
  print('accelerating');
 }
}


//Object Oriented Programming(OOP)
void main() {
  finale date = DateTime.now();
  //there are differents type of OOP Object
  //1. Polymorphism. Ability for an object to take many forms
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();
  //2. Abstraction. Process of hiding the internal details and complexity of an object and only exposing essential features and functionality
  Animal animal = Cat();
  animal.sound();
  Animal animal2 = Dog();
  animal2.sound();
  //3. Inheritance. Extending a class and using the properties in the super class
  //4. Encapsulation. Bundling methods and method in a single unit. And data are hidden from the outside world, data protections and hiding
}

//POLYMORPHISM
class Animal {
  void sound() {
    print('Animal making sound');
  }
}

class Cat extends Animal {
  @override
  void sound(){
    print('Cat making sound');
  }
}

class Dog extends Animal {
    @override
  void sound(){
    print('Dog making sound');
  }
}


//ABSTRACTION
abstract class Animal {
  void sound();
}

class Cat extends Animal {
  @override
  void sound(){
    print('Cat making sound');
  }
}

class Dog extends Animal {
    @override
  void sound(){
    print('Dog making sound');
  }
}


//ENCAPSULATION
class _Person { //in this way you make class private
  String _name; //hidden from the outside world

  void _getName() {

  }
}


// MIXIN. It mixes in the properties of the class you're mixing 
void main() {
  final anim = Animal();

  anim.fn();
}

mixin Jump { //the difference is that you are not establishing a parent-child relationship
  int jumping = 10;
}

mixin Scream { // if I put "on ..." then I can restrict the acces
  bool isScreaming = false;
}

class Animal with Jump, Scream {
  void fn() {
    print(jumping);
    print(isScreaming);
  }
}

class Cat extends Animal {
  void func() {
    print(jumping);
  }
}

//or I can do 
mixin class Animal  {

  void fn() {
    print('hi');
  }
}

class Cat with Animal {
  void func() {
    print();
  }
}


//now let's suppose
void main() {
  Animal animal = Cat();

  switch(animal) {
    case Dog():
      print('dog');
    case Cat():
      print('cat');
    case Human():
      print('human');
  }
}

sealed class Animal {}  //cannot be implemented or extended outside the same library

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}

sealed class Animal {}
final class Aniaml1 {} //you cannot implement or extends outside the library
base class Animal2 {} //can only be extended
interface class Animal3 {} //can only be implemented
mixin class Aniaml4 {}

sealed/final/base class Humam extends Animal2 {}

abstract interface class Animal5 {}

class Animal6{}

class Human with Animal4 {}