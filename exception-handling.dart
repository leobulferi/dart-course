//Exception Handling
void main() {

  print(10~/3);
  // 10/3 = 3.333 -> 3
  print(10/0);


  try {
    print(10~/0); //we have to handle this error, so that the code below will be printed
  } catch (e) {
    print('Some error occured');
  } finally { //it will always be executed
    print('FINALLY BLOCK EXECUTED');
  }

  print('Rivaan'); 



  try {
    print(10~/0); //we have to handle this error, so that the code below will be printed
  } on Execption catch (e) {
    print(e);
  } catch (e) { //it will always be executed
    print('Some error occured');
  }
}