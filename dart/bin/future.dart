import 'dart:async';

void main(List<String> args) async {
  var delay = Future.delayed(Duration(seconds: 5));

  delay
      .then((value) => print("I have been waiting for 5 seconds"))
      .catchError((error) => print(error))
      .whenComplete(() => null);

  var x = await Future.wait([runInTheFuture()]);
  print(x);
}

Future<String> runInTheFuture() async {
  var data = await Future.value('world');

  return 'Hello $data';
}
