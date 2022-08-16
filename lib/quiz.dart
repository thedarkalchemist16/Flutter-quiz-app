// ignore_for_file: prefer_const_constructors_in_immutables, invalid_required_positional_param

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class QuizApp extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answers;

  QuizApp(@required this.questions, @required this.answers,
      @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answers(answer['score']), answer['answerText']);
        }).toList(),
      ],
    );
  }
}
