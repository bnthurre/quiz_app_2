import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'learn flutter the fun way!!!',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          OutlinedButton.icon(
              onPressed: startquiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('start quiz'))
        ],
      ),
    );
  }
}
