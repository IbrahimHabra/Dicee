import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int l = 1;
  int r = 1;

  void rara() {
    l = Random().nextInt(6) + 1;
    r = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                rara();
              });
            },
            child: Image.asset("images/dice$l.png"),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                rara();
              });
            },
            child: Image.asset("images/dice$r.png"),
          ))
        ],
      ),
    );
  }
}
