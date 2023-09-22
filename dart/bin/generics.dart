void main(List<String> args) {
  // a generic is a way to pass a type as a parameter
  List<int> numbers = [1, 2, 3];

  Box<String> box1 = Box('cool');

  Box<double> box2 = Box(2.23);

  Box<List<int>> box3 = Box(numbers);

  print(box1.openBox());
  print(box2.openBox());
  print(box3.openBox());
  numbers.add(4);
  print(box3.openBox());
}

class Box<T> {
  T value;

  Box(this.value);

  T openBox() {
    return value;
  }
}
