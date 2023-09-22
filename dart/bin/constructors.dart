void main(List<String> args) {
  var rect = Rectangle(25, 30);

  const cir = Circle(radius: 50, name: 'foo');

  var p1 = Point.fromMap({'lat': 10, 'lng': 20});
  var p2 = Point.fromList([10, 20]);
}

class Rectangle {
  final int width;
  final int height;
  String? name; //optional parameter
  late final int area;

  Rectangle(this.width, this.height, [this.name]) {
    area = width * height;
  }
}

class Circle {
  const Circle({required int radius, String? name});
}

class Point {
  late final double lat;
  late final double lng;

  // Named constructor
  Point.fromMap(Map data) {
    lat = data['lat'];
    lng = data['lng'];
  }

  Point.fromList(List data) {
    lat = data[0];
    lng = data[1];
  }
}
