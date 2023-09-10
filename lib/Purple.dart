import 'package:flutter/material.dart';

class Purple extends StatelessWidget {
  const Purple(String message, {super.key});

  final String message = 'Learn Flutter the fun way!';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            message,
            style: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 242, 235, 255),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {
              print('yes');
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 131, 19, 151),
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
