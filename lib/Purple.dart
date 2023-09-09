import 'package:flutter/material.dart';

class Purple extends StatelessWidget {
  const Purple(String message, {super.key});

  final String message = 'Learn Flutter the fun way!';

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 900,
        color: const Color.fromARGB(255, 131, 19, 151),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
            ),
            const SizedBox(height: 40),
            Text(
              message,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                print('yes');
              },
              child: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
