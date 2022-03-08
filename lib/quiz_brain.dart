import 'package:flutter/material.dart';
import 'package:math_quiz/answer.dart';

const kQuestionTextStyle =
    TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.brown);

class QuizBrain extends StatelessWidget {
  final List<Map<String, dynamic>> question;
  final int questionIndex;
  final VoidCallback onPressed;

  const QuizBrain(
      {Key? key,
      required this.question,
      required this.questionIndex,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            question[questionIndex]['questionText'].toString(),
            style: kQuestionTextStyle,
          ),
          const SizedBox(
            height: 50.0,
          ),
          ...question[questionIndex]['questionAnswer'].map((answer) {
            return Answer(
                answerText: answer['text'].toString(), onPressed: onPressed);
          }).toList(),
        ],
      ),
    );
  }
}
