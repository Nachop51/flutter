// import 'constructors.dart';
// otherwise, you can use the import prefix to avoid name conflicts
import 'constructors.dart' as my_shapes;
// also hide some names
// import 'constructors.dart' hide Circle;
// or show only some names
import 'constructors.dart' show Rectangle;

void main(List<String> args) {
  Circle();
  my_shapes.Circle(radius: 50);
  Rectangle(10, 20);
}

class Circle {}
