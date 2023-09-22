void main(List<String> args) {
  Basic thing = Basic(1);
  thing.id;
  print(thing);
  print(thing.id);

  thing.doStuff();

  Basic.helper();
}

class Basic {
  int id = 5;

  Basic(this.id);

  doStuff() {
    print('Hello my ID is $id');
  }

  static helper() {
    print('I am a helper');
  }
}
