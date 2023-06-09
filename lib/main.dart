import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.grey[850],
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                    },
                  child: Image(
                    image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                    // print('value of dices are ${leftDiceNumber+rightDiceNumber}' );
                  },
                  child: Image(
                    image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ),
              ],
            ),
      ),
    );
  }
}
