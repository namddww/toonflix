import 'package:flutter/material.dart';

// dart컴파일러가 컴파일하면 두 변수를 위한 메모리 공간을 만드는 대신
const taxAmount = 15;
const priceAmount = 15;

var finalPrice = 46;

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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.end, //컬럼은 가로방향, 로우는 세로방향
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
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$5 194 482',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// git Test
// git Test2
