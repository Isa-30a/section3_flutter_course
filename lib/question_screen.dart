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
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('The Question... '),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 4'),
        ),
      ]),
    );
  }
}
