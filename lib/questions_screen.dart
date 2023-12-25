import 'package:flutter/material.dart';
import 'package:quiz_app_2/answer_button.dart';
import 'package:quiz_app_2/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }),
          // AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
          // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          // AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          // AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
