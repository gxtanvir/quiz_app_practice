import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 30),
          AnswerButton(onTap: () {}, answer: currentQuestion.answers[0]),
          AnswerButton(onTap: () {}, answer: currentQuestion.answers[1]),
          AnswerButton(onTap: () {}, answer: currentQuestion.answers[2]),
          AnswerButton(onTap: () {}, answer: currentQuestion.answers[3]),
        ],
      ),
    );
  }
}
