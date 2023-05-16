import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: StartScreen(
            colors: [
              Color.fromARGB(255, 83, 10, 167),
              Color.fromARGB(255, 98, 16, 152),
            ],
          ),
        ),
      ),
    );
  }
}
