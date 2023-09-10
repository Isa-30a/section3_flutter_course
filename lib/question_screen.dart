import 'package:flutter/material.dart';

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
    return const Text("Question Screen");
  }
}
