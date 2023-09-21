void main(List<String> args) {
  // int age = null; // error

  int number = 10; // non-nullable
  int? age; // int? age = null redundant null assignment
  // the ? is called the null-aware operator
  // it is used to tell the compiler that the variable can be null

  print(age == null);

  if (age != null) {}

  String? answer;

  // null string assignment to non-nullable variable
  // String result = answer; // error

  String result = answer!; // null assertion operator
  // this makes the compiler think that the variable is not null
}

class Animal {
  // final String _size; // needs to be initialized, otherwise error
  late final String _size; // late keyword

  void goBig() {
    _size = 'big';
    print(_size);
  }
}
