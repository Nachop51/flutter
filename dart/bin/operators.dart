void main(List<String> args) {
  // Basic math

  // 1 + 2 - 3 * 4 / 5

  // Logic operators

  // && || !
  // 1 == 1
  // 1 < 2
  // 1 >= 1

  var x = 1;
  x++;
  x--;

  String? name;

  String z = name ?? "Guest"; // if the variable is null, assign the value

  name ??= "Guest"; // if the variable is null, assign the value

  String color = "blue";
  // ternary operator
  var isThisBlue = color == 'blue' ? true : false;

  dynamic Paint;

  // var paint = Paint();
  // paint.color = "blue";
  // paint.strokeCap = "round";
  // paint.strokeWidth = 10.0;

  // cascade operator
  // var paint2 = Paint()
  //   ..color = "blue"
  //   ..strokeCap = "round"
  //   ..strokeWidth = 10.0;
  // .. call method but return original object

  // typecast
  var number = 23 as String;
  number is String;

  print(number);
  print(number.runtimeType);
}
