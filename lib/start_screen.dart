import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
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
              color: Color.fromARGB(255, 228, 238, 246),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
