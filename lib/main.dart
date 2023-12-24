import 'package:flutter/material.dart';
import 'package:quiz_app_2/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 207, 158, 8),
              Color.fromARGB(255, 207, 157, 4)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: const StartScreen())),
  ));
}
