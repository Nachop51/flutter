void main(List<String> arguments) {
  // print('Hello world!');
  int num = 10;
  double num2 = 10.5;

  bool isTrue = true;

  print((num + num2));
  print((num + num2) is int);
  print((num + num2).runtimeType);

  String name = 'Nachop';

  print('The type of $name is a String? ${name is String}');

  var username = "nacho";
  username = "nachooo";

  final String fullname = "Nacho Peralta";

  const int age = 10;
  // const int anotherAge = num + 10; // error
}
