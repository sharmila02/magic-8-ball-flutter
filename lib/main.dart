import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              'Ask Me Anything!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: MagicBallPage(),
        ),
      ),
    );

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ball = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ball.png'),
      ),
    );
  }
}
