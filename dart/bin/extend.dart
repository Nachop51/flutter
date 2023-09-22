void main(List<String> args) {}

abstract class Dog {
  void walk() {
    print('Walking...');
  }
}

class Pug extends Dog {
  String breed = 'pug';

  @override
  void walk() {
    super.walk();
    print('Walking pug...');
  }
}
