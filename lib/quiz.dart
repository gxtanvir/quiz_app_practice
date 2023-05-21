import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(swithchScreen);
  // }

  void swithchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: activeScreen == 'start-screen'
              ? StartScreen(swithchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
