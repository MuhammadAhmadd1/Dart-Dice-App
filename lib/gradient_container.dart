import 'package:dice_roller/roll_dice.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 39, 2, 65),
        color2 = Colors.deepPurple;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
