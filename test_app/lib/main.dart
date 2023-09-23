import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(const MyApp());
  runApp(
    const MaterialApp(
      title: 'Navigation Basics',
      home: HomeScreen(),
    ),
  );
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    // This gets called when the widget is added to the widget tree
  }

  @override
  void dispose() {
    super.dispose();
    // This gets called when the widget is removed from the widget tree
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade100,
        title: const Text('My first flutter App :)'),
      ),
      body: Column(
        children: [
          const ColumnWidget(),
          ElevatedButton(
            child: const Text('Navigate'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ScrollableScreen(),
                ),
              );
            },
          )
        ],
      ),
      backgroundColor: Colors.purple.shade100,
    );
  }
}

class ScrollableScreen extends StatelessWidget {
  const ScrollableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade100,
        title: const Text('Second route'),
      ),
      body: const ListViewWidget(),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (_, index) {
        return Container(
          color: randomColor(),
          width: 500,
          height: 500,
          child: Text('Item $index'),
        );
      },
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (_, index) {
      return Container(
        color: randomColor(),
        width: 500,
        height: 500,
        child: Text('Item $index'),
      );
    });
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextWidget(),
        RowWidget(),
        StackWidget(),
      ],
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.purple.shade200,
        ),
        // const Positioned(
        //   top: 25,
        //   left: 25,
        //   child: Icon(Icons.verified),
        // ) // or aligned:
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.verified),
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.backpack,
        ),
        Icon(
          Icons.leaderboard,
        ),
        Icon(
          Icons.person,
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.purple.shade200,
      // padding: const EdgeInsets.all(20.0),
      // margin: const EdgeInsets.all(100),
      child: const Padding(
        // or sizedbox
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Hi sweetie 💕🐝🐷🐮',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
