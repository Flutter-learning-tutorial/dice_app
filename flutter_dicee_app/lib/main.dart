import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        body: DiceBodyContainer(),
      ),
    );
  }
}

class DiceBodyContainer extends StatelessWidget {
  const DiceBodyContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  print('left button tapped');
                },
                style: TextButton.styleFrom(primary: Colors.grey),
                child: Image.asset(
                  "images/dice$leftDiceNumber.png",
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  print('right button tapped');
                },
                style: TextButton.styleFrom(primary: Colors.grey),
                child: Image.asset(
                  "images/dice1.png",
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
