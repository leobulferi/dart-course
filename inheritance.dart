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

}

class OtherClass {
  bool isLightOn = true;
  bool isEngineWorking = false;
  int noOfWheels = 10;
}

class Vehicle{
  void accelerate() {
    print('accelerating vehicle ahah');
  }

}

class Car extends OtherClass implements Vehicle {  //I have access to OtherClass but I have to implement Vehicle
  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  int noOfWheels = 4;

  @override
  void accelerate() {
    super.accelerate();   //it refer to istance classes of the vehicle. U can use it just with extends. You now modify the contents of the parent class in the subclass
    super.isEngineWorking = true;  
  }

}

class Truck implements Vehicle { 
   @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @overrideint noOfWheels = 6;

  @override
  void accelerate() {
    print('accelerating the truck');
  }

}

class Bike implements Vehicle {

}


//Object Oriented Programming(OOP)
