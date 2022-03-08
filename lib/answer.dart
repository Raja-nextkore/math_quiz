import 'package:flutter/material.dart';

const kAnswerTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white);

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback onPressed;

  const Answer({Key? key, required this.answerText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        color: Colors.brown[400],
        onPressed: onPressed,
        child: Text(
          answerText,
          style: kAnswerTextStyle,
        ),
      ),
    );
  }
}
