import 'package:flutter/material.dart';
import 'dart:math';

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
  int left = 5;
  int right = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RawMaterialButton(
                onPressed: () {
                  setState(() {
                    left = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$left.png'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RawMaterialButton(
                onPressed: () {
                  setState(() {
                    right = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
