// ignore_for_file: prefer_const_constructors, deprecated_member_use, void_checks

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback QuizResetVar;
  Result(this.finalScore, this.QuizResetVar);
  String get ResultPhrase {
    String resultText;

    if (finalScore < 8) {
      resultText = "You are Awesome";
    } else if (finalScore > 8 && finalScore <= 12) {
      resultText = 'You are good';
    } else if (finalScore >= 12 && finalScore <= 16) {
      resultText = 'You are bad';
    } else {
      resultText = "You are pathetic";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          ResultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: QuizResetVar,
            child: Text("Restart Quiz!!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)))
      ],
    ));
  }
}
