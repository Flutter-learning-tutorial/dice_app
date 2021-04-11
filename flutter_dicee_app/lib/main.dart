import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(DiceScreen());
}

class DiceScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("Dice Home"),
          backgroundColor: Colors.grey[800],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          getDice(leftDiceNumber),
          getDice(rightDiceNumber),
        ],
      ),
    );
  }

  Expanded getDice(int diceNumber) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              leftDiceNumber = Random().nextInt(5) + 1;
              rightDiceNumber = Random().nextInt(5) + 1;
              print('left dice: $leftDiceNumber');
              print('Right dice: $rightDiceNumber');
            });
          },
          style: TextButton.styleFrom(primary: Colors.grey),
          child: Image.asset(
            "images/dice$diceNumber.png",
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
