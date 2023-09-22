void main(List<String> args) {
  var s = SuperHuman();
  s.benchPress();
  s.calculate();
}

class SuperHuman extends Human with Strong, Smart {}

class Human {}

mixin Strong {
  bool doesLift = true;

  void benchPress() {
    print('Bench pressing...');
  }
}

mixin Smart {
  bool doesMath = true;

  void calculate() {
    print('Calculating...');
  }
}
