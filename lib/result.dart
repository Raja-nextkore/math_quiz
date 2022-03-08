import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback onPressed;
  const Result({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('you did it'),
          RaisedButton(
            onPressed: onPressed,
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
