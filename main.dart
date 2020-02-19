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
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var _leftDiceNumber = 1;
  var _rightDiceNumber = 1;

  void randomiseDice() {
    _leftDiceNumber = Random().nextInt(7);
    _rightDiceNumber = Random().nextInt(7);
  }

  @override
  Widget build(BuildContext context) {
    if (_leftDiceNumber == 0) {
      _leftDiceNumber = 1;
    }
    if (_rightDiceNumber == 0) {
      _rightDiceNumber = 1;
    }
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.zero,
                child: Image(
                  image: AssetImage('images/dice$_leftDiceNumber.png'),
                ),
                onPressed: () {
                  setState(
                    () {
                      randomiseDice();
                    },
                  );
                },
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.zero,
                child: Image(
                  image: AssetImage('images/dice$_rightDiceNumber.png'),
                ),
                onPressed: () {
                  setState(
                    () {
                      randomiseDice();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
