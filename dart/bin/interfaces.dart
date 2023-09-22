void main(List<String> args) {
  var e = Elephant('Bob');

  e.sayHi();

  e._saySecret();
}

// Abstract class
abstract class Foo {
  // Abstract method
  void doStuff();
}

class Elephant {
  // Public interface
  late final String name;
  final int _id = 23; // In the interface, but only visible in this library

  // The constructor isn't part of the interface
  Elephant(this.name);

  // Public method
  sayHi() => 'My name is $name';

  // Private method
  _saySecret() => 'My ID is $_id';
}
