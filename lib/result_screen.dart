import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
            const Text(
              'Thank you for Quiz',
            ),
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
