void main() {
  // function declaration
  // Positional arguments
  takeFive(int number) {
    return "$number minus 5 is ${number - 5}";
  }

  var str = takeFive(23); // required argument

  print(str);

  // namedParams({String? name, int? age}) {
  // namedParams({required String name, int age = 20}) { // default value
  namedParams({required String name, required int age}) {
    print("My name is $name and I am $age years old");
  }

  namedParams(name: "Nacho", age: 20);

  // Arrow function
  takeTen(int number) => "$number minus 10 is ${number - 10}";

  print(takeTen(23));

  callIt(Function callback) {
    callback();
  }

  // Anonymous function
  callIt(() {
    print("I am a callback");
  });

  callIt(() => print("I am a callback"));
}
