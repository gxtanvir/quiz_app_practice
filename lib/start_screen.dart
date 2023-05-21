import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  final void Function() quizStart;

  const StartScreen(this.quizStart, {super.key});
  
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(172, 241, 229, 242),
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
          OutlinedButton.icon(
            onPressed: quizStart,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
