import 'package:flutter/material.dart';
import 'package:math_quiz/quiz_brain.dart';
import 'package:math_quiz/result.dart';

void main() {
  runApp(
    const Quiz(),
  );
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MathQuiz(),
    );
  }
}

class MathQuiz extends StatefulWidget {
  const MathQuiz({Key? key}) : super(key: key);

  @override
  _MathQuizState createState() => _MathQuizState();
}

class _MathQuizState extends State<MathQuiz> {
  int _questionIndex = 0;
  final List<Map<String, dynamic>> _question = [
    {
      'questionText': 'what\'s your favorite color?',
      'questionAnswer': [
        {'text': 'red', 'score': 10},
        {'text': 'white', 'score': 10},
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 10},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'questionAnswer': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 10},
        {'text': 'lion', 'score': 10},
        {'text': 'snake', 'score': 10},
      ]
    },
    {
      'questionText': 'witch movie do you like more',
      'questionAnswer': [
        {'text': 'Harry Potter', 'score': 10},
        {'text': 'Monkey King', 'score': 10},
        {'text': 'Kung Fu Panda', 'score': 10},
        {'text': 'Hunter', 'score': 10}
      ]
    },
  ];

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: const Text('MathQuiz'),
      ),
      body: _questionIndex < _question.length
          ? QuizBrain(
              question: _question,
              questionIndex: _questionIndex,
              onPressed: _nextQuestion,
            )
          : Result(onPressed: _restartQuiz),
    );
  }
}
