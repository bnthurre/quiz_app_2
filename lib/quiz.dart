import 'package:flutter/material.dart';
import 'package:quiz_app_2/questions_screen.dart';
import 'package:quiz_app_2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 207, 158, 8),
                Color.fromARGB(255, 207, 157, 4)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: screenWidget)),
    );
  }
}

////using ternary exp

// import 'package:flutter/material.dart';
// import 'package:quiz_app_2/questions_screen.dart';
// import 'package:quiz_app_2/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   var activeScreen = 'start-screen';
//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Container(
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 207, 158, 8),
//                 Color.fromARGB(255, 207, 157, 4)
//               ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
//               child: activeScreen == 'start-screen'
//                   ? StartScreen(switchScreen)
//                   : const QuestionsScreen())),
//     );
//   }
// }




 ////using initstate method

// import 'package:flutter/material.dart';
// import 'package:quiz_app_2/questions_screen.dart';
// import 'package:quiz_app_2/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;
//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);

//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Container(
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 207, 158, 8),
//                 Color.fromARGB(255, 207, 157, 4)
//               ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
//               child: activeScreen)),
//     );
//   }
// }
