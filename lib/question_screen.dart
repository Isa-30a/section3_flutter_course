import 'package:flutter/material.dart';
import 'package:section3_flutter_course/quiz_button.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<Question> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'The Question... ',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30),
        AnswerButton('answer 1', () {}),
        const SizedBox(height: 30),
        AnswerButton('answer 2', () {}),
        const SizedBox(height: 30),
        AnswerButton('answer 3', () {}),
        const SizedBox(height: 30),
        AnswerButton('answer 4', () {})
      ]),
    );
  }
}
