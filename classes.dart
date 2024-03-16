void main() {
  Cookie(); //for calling cookie class, we say we instantiated the class
  print(Cookie().shape); //I print 'Circle'
  print('${Cookie().size} cm'); //printing '15.2 cm'
  Cookie().baking();
  final isCookieCooling = Cookie().isCooling();
  print(isCookieCooling);
  Cookie cookie = Cookie(); //now I don't have to call Cookie(). anymore each time. I can use Cookie as type of the variable
  //now it is 
  cookie.baking;
  final isCookieCooling = cookie.isCooling();

}

class Cookie { //we use PascalCase for classes
  //variables
  String shape = 'Circle';
  double size = 15.2; //cm

  //methods, that's how we name functions that are inside a class
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}




void main() {
  final cookie = Cookie();
  print(cookie.shape); //print 'Circle'
  cookie.shape = 'Rectangle';
  print(cookie.shape); // print 'Rectangle'

  //if we do 
  print(Cookie().shape); //print 'Circle'
  Cookie().shape = 'Rectangle';
  print(Cookie().shape); // print 'Circle'
  // that's because I'm creating brand new Cookie class each time, because we didn't save in a variable


}

class Cookie {
  //variables
  String shape = 'Circle';
  double size = 15.2; //cm

  //methods
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}






void main() {
  final cookie = Cookie(); 
  cookie.shape = 'Rect';
  cookie.shape = 16.2;
  // I don't want that, I want to give the value yet initially when we save the class in an object and we create the class
  // in order to do this we use CONSTRUCTOR -> they run as soon as I call Cookie()
  final cookie = Cookie('Hello', 20); //they are POSITIONAL arguments
  print(cookie.shape);
  print(cookie.size);
  /*
  is gonna print 
  "Cookie constructor called
  Baking has started
  Hello
  20
  "
  */ 
  final cookie = Cookie(shape: 'Hello', size: 20);
}

class Cookie {
  String shape;
  double size;
  Cookie(this.shape, this.size) { //Parametrized Constructor
    print('Cookie constructor called');
    baking(); // for calling a method inside a class you don't have to put Cookie() in front of the method
  }
  //or if I don't want the constructur to do something specific is fine also like this
  Cookie(this.shape, this.size);

  //or
  String? shape = 'Cookie';
  double? size;
  Cookie(String shape, double size) { 
    print(this.shape);
    this.shape = shape;
    this.size = size;
  }

  // if we don't want to allow to change the variable once defined
  final String shape;
  final double size;
  Cookie({required this.shape, required this.size}); //like functions we have the same in constructors, NAMED CONSTRUCTORS

  //methods
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}









void main() {
  final cookie = Cookie(shape: 'Hello', size: 20);
  print(cookie.shape);
  print(cookie.height); //with getters I can't modify it but I can read it and print it
  cookie.setHeight = 15; //syntax for a setter
}

class Cookie {
  final String shape;
  final double size;
  Cookie({required this.shape, required this.size}) {
    baking();
  }

  //Private variables, you want them just to be visible inside the class (ex: for some calculations). Private for a file
  int _height= 0; //I put _ before it
  int _width = 5;

  //Getters
  int get height => _height; //I use it so I can modify _height inside the class but not outside, a read only value
  void calculateSize() {
    return _height * _width;
  }

  //Setters
  set setHeight(int h) { //instead of the code written one line above
    _height = h;
  }
  
  void baking() {
    print('Your cookie which is of the shape $shape and the size $size cm has starded baking');
  }

  bool isCooling() {
    return false;
  }
}



/*
We want to create a class without nothing inside of it so we don't consume memory. For that we have static function and static variables
*/
//STATIC VARIABLES
void main() {
  print(Constants.greeting); //in this way I can avoid using Constants(). and save it into an object
  print(Constants.bye);
}

class Constants {
  Constants() {
    print('Constructur called');
  }
  static String greeting = 'Hello, how are you?';
  static String bye = 'Bye!';
}

//STATIC FUNCTIONS
void main() {
  print(Constants.greeting); //in this way I can avoid using Constants(). and save it into an object
  print(Constants.bye);
  print(Constants.giveMeSomeValue());
}

class Constants {
  static int height = 10;
  static String greeting = 'Hello, how are you?';
  static String bye = 'Bye!';

  static int giveMeSomeValue() {
    return height; //I can do it only if I put static in front of height or I remove both static either from height and giveMeSomeValue
  }
}