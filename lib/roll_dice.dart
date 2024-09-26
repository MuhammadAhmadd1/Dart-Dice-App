import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentState = 2;
  void RollDice() {
    setState(() {
      currentState = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentState.png', width: 150),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: RollDice,  
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 32, 3, 82),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll'),
        ),
      ],
    );
  }
}
