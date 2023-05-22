import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Question Here......"),
          const SizedBox(height: 30),
          AnswerButton(onTap: () {}, answer: 'Answer 1'),
          AnswerButton(onTap: () {}, answer: 'Answer 2'),
          AnswerButton(onTap: () {}, answer: 'Answer 3'),
          AnswerButton(onTap: () {}, answer: 'Answer 4'),
        ],
      ),
    );
  }
}
