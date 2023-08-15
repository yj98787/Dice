import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.teal,
          ),
          body: DicePage(),
        ),
      )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice= 6;
  int rightDice = 6;
  void DiceFace (){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  DiceFace();
                },
                child: Image(
                    image: AssetImage('images/dice$leftDice.png')),
              )),
          SizedBox(width: 10,),
          Expanded(
              child: TextButton(
                onPressed: (){
                  DiceFace();
                },
                child: Image(
                    image: AssetImage('images/dice$rightDice.png')),
              )),
        ],
      ),
    );
  }
}
