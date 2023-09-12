import 'package:flutter/material.dart';
import 'package:section3_flutter_course/quiz_button.dart';
import 'package:section3_flutter_course/data/questions.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<Question> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ...currentQuestion.getShuffledList().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
