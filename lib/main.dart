import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

int BallNum = 1;

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: SafeArea(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  BallNum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$BallNum.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
