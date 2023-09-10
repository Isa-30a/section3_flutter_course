import 'package:flutter/material.dart';
import 'Purple.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(57, 13, 255, 0.412),
              Color.fromRGBO(166, 13, 255, 0.412)
            ])),
            child: Purple('Learn Flutter the fun way!'),
          ),
          backgroundColor: const Color.fromARGB(255, 131, 19, 151)),
    );
  }
}
