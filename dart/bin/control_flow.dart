void main(List<String> args) {
  String color = "red";

  if (color == "blue") {
    //
  } else if (color == 'green') {
    //
  } else {
    // default
  }

  if (color == "red") print("Hello $color");

  String thing1 = '';

  if (thing1.isEmpty) {
    print("thing1 is empty");
  }

  String? thing2;

  if (thing2 != null) {}

  for (var i = 0; i < 5; i++) {
    print(i);
  }

  int i = 0;

  while (i < 5) {
    print(i++);
  }

  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  // assert
  var txt = "good";
  assert(txt == "bad :(");

  if (identical(txt, "good")) {
    print("identical");
  } else {
    print("not identical");
  }
}
