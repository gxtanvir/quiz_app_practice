import 'package:flutter/material.dart';

const topAlignment = Alignment.topCenter;
const bottomAlignment = Alignment.bottomCenter;

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.colors});

  final List<Color> colors;

  void quizStart() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: topAlignment,
          end: bottomAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Learn Flutter The Fun Way!",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: quizStart,
              child: const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
