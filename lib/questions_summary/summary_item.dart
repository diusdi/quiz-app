import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.itemData,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Row(
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                itemData['correct_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 202, 171, 252)),
              ),
              Text(
                itemData['user_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 181, 254, 246)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}