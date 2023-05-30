import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(60),
          child: Column(
            children: summaryData.map(
              (data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 23, 15, 125),
                        foregroundColor: Colors.white,
                        shape: const CircleBorder(
                          side: BorderSide(width: 10.5),
                        ),
                      ),
                      onPressed: null,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.abel(
                                color: const Color.fromARGB(255, 213, 213, 243),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.abel(
                              color: const Color.fromARGB(255, 168, 168, 207),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Text(
                            data['currect_answer'] as String,
                            style: GoogleFonts.abel(
                              color: const Color.fromARGB(255, 133, 208, 112),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
