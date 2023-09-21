void main(List<String> args) {
  Map<String, dynamic> book = {
    'title': 'Moby Dick',
    'author': 'Herman Melville',
    'pages': 752
  };

  print(book['title']);
  book['newAttribute'] = 5234;
  print(book['newAttribute']);

  print(book.keys);
  print(book.values);
  print(book.values.toList());

  for (MapEntry b in book.entries) {
    print('Key ${b.key}, Value ${b.value}');
  }

  book.forEach((key, value) {
    print("Key : $key, Value : $value");
  });
  // or
  book.forEach((key, value) => print("Key : $key, Value : $value"));
}
