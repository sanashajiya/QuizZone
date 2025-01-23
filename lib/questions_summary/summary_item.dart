import 'package:flutter/material.dart';
import 'package:quizzone/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        SizedBox(width: 20),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              itemData['user_answer'] as String,
              style: TextStyle(
                color: Color.fromARGB(255, 202, 171, 252),
              ),
            ),
            Text(
              itemData['correct_answer'] as String,
              style: TextStyle(
                color: Color.fromARGB(255, 181, 254, 246),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
