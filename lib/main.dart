import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(home: const BallPage()),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Color.fromARGB(255, 1, 59, 107),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber =1;

  


  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        setState(() {
          BallNumber = Random().nextInt(5)+1;
        });
        print("${BallNumber} got clicked");

      },
      child: Image(
        image: AssetImage("images/ball${BallNumber}.png")
      ),
    ));
  }
}
