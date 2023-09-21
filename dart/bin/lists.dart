void main() {
  List<int> list = [1, 2, 3, 4, 5]; // generic type (optional)
  // List is an iterable
  // the iterables are: List, Set, Map, String

  print(list[0]);
  list[0] = 10;
  print(list);
  print(list.sublist(2, 5));

  var list2 = List.filled(10, "hello mom");
  print(list2);

  list.length;
  list.last;
  list.first;

  list.add(6); //push
  list.add(7);
  print(list);
  list.removeLast(); // pop
  print(list);
  list.insert(1, 100);
  list.removeAt(1);
  print(list);

  for (int n in list) {
    print(n);
  }

  for (var element in list) {
    // anonymous function
    print(element);
  }

  var doubled = list.map((n) => n * 2);
  print(doubled);

  var combined = [...list, ...doubled];
  print(combined);
  combined.forEach(print); // wtf

  bool depressed = false;
  var cart = [
    'milk',
    'eggs',
    if (depressed) 'whiskey',
  ];
  print(cart);
}
