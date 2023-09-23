import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade100,
        title: const Text('My first flutter App :)'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(),
          RowWidget(),
          StackWidget(),
        ],
      ),
      backgroundColor: Colors.pink.shade100,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('You clicked me!');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
      drawer: const Drawer(
        child: Text('Yo!'),
      ),
    ));
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
