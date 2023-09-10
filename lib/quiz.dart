import 'package:flutter/material.dart';
import 'package:section3_flutter_course/question_screen.dart';
import 'package:section3_flutter_course/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();

  void setActiveScreen(Widget newScreen) {
    setState(() {
      activeScreen = const Question();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(57, 13, 255, 0.795),
                Color.fromRGBO(166, 13, 255, 0.822)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
