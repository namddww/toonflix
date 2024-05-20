import 'package:flutter/material.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var nico = Player(name: 'potato');
  runApp(App());
}

// MaterialApp 은 안드로이드 스타일, CupertinoApp 은 ios 스타일, 구글이 만들었으므로 MaterialApp가 더 자연스러움
class App extends StatelessWidget {
  //StatelessWidget 는 그림만 그려주는 위젯
  @override
  Widget build(BuildContext context) {
    // Scaffold가 없으면 0,0부터 그림을 그림
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Sellina',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
// git Test
// git Test2