import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 15, 45, 134),
            Color.fromARGB(255, 50, 120, 195),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Learn Flutter in a Fun Way!",
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 222, 203, 247),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
