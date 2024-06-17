import 'package:flutter/material.dart';

class Player {
  String? name;
  Player();
}

void main() {
  var nico = Player(name: 'potato');

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text('Hey, Selena'),
                    Text('Welcome back'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
