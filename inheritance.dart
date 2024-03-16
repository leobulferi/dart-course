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
}
class SomeClass {
  int speed = 15;

  void accelarate() {
    speed += 30;
  }
}

class Vehicle extends SomeClass{
  int speed = 10;
  bool isEngineWorking = false;

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




//Object Oriented Programming(OOP)