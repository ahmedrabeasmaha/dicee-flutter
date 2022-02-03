import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() {
    return _DicePageState();
  }
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = Random().nextInt(6) + 1;
  int rightDiceNum = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: changeDice,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: changeDice,
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }
}
