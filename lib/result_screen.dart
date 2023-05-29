import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summery = [];

    for (int i = 0; i < chosenAnswer.length; i++) {
      summery.add(
        {
          'question_index' : i,
          'question' : questions[i].text,
          'currect_answer' : questions[i].answers[0],
          'user_answer' : chosenAnswer[i]
        }
      );
    }
    return summery;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have chosen X out of Y correctly',
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 23, 15, 125),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
