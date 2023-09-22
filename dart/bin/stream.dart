import 'dart:async';

void main(List<String> args) {
  // Streams can only be listened to once
  // but BroadcastStreams can be listened to multiple times
  var stream = Stream.fromIterable([1, 2, 3]).asBroadcastStream();

  stream.listen((event) {
    print(event);
  });

  stream.map((event) => event * 2).listen((event) => print(event));
}

streamFun() async {
  var stream = Stream.fromIterable([1, 2, 3]);

  await for (var event in stream) {
    print(event);
  }
}
