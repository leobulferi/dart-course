//FUTURES-> it represents a class or function that may be completed in the future. it use exception handling extensively

void main() async {


  //sending  a request to an external service in order to get data from an API
  print('Hey');
  print('Hello');
  print('Greetings!');

  final result = await giveAResultAfter2Sec(); //put async in the main function
  print(result);

  giveAResultAfter2Sec().then((val) {
    print(val);
  });
}

Future<String> giveAResultAfter2Sec() async {
  return 'Hey!!!';
}
//or
Future<String> giveAResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () async {
    return 'Hey!!!!';
  });
}

//Future<void> vs void , they are different


//we are importing data from an external packages
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');

  try{
    final res = await http.get(url);
    print(jsonDecode(res.body)['name']);
  } catch (e) {
    print(e);
  }
  //or
  http.get(url).then((val) {
    print(jsonDecode(val.body)['name']);
  }).catchError((err) {
    print(err);
  })


  get(); //for calling the function below
}

void get() {

}

//STREAMS -> async generator, that allows us to produce a sequence of values over time
void main() async {
  countDown().listen((val) {
    print(val);
  }, onDone: () {
    print('HEY I COMPLETED IT!!')
  }, );

  print('HIII');
}

Stream<void> countDown() async* {
  for(int i=5; i>0; i--){
    yield i;
    await Future.delayed(Duration(seconds:1));
  }
}