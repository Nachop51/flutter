import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const DemoApp());
}

class CounterState extends ChangeNotifier {
  int count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterState(),
      child: const CountText(),
    );
  }
}

class CountText extends StatelessWidget {
  const CountText({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<CounterState>();
    var state2 = Provider.of<CounterState>(context);

    return Text('${state.count} ${state2.count}');
  }
}

class FutureDemo extends StatelessWidget {
  const FutureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.value(23),
      builder: (context, snapshot) {
        int? count = snapshot.data;

        return Text('$count');
      },
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.fromIterable([1, 2, 3, 4]),
      builder: (context, snapshot) {
        var count = snapshot.data;

        return Text('$count');
      },
    );
  }
}
