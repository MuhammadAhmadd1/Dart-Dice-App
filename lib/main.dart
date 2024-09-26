import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(Color.fromARGB(255, 36, 3, 78),
              Color.fromARGB(255, 106, 7, 131))),
    ),
  );
}
