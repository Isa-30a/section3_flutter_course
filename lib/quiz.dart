import 'package:flutter/material.dart';
import 'package:section3_flutter_course/data/questions.dart';
import 'package:section3_flutter_course/question_screen.dart';
import 'package:section3_flutter_course/start_screen.dart';
import 'package:section3_flutter_course/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'question_screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (answer.length == questions.length) {
      setState(
        () {
          selectedAnswers = [];
          activeScreen = 'results_screen';
        },
      );
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question_screen') {
      screenWidget = Question(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(57, 13, 255, 0.795),
                Color.fromRGBO(166, 13, 255, 0.932)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
