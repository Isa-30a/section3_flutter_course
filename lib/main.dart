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
          appBar: AppBar(
            toolbarHeight: 0,
            shadowColor: Colors.transparent,
            backgroundColor: const Color.fromARGB(255, 131, 19, 151),
          ),
          body: const Center(
            child: Purple('Learn Flutter the fun way!'),
          ),
          backgroundColor: const Color.fromARGB(255, 131, 19, 151)),
    );
  }
}
