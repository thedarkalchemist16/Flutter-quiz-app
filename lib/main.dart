// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:starting_with_flutter/question.dart';
import 'package:starting_with_flutter/answer.dart';
import 'package:starting_with_flutter/quiz.dart';
import 'result.dart';

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyFirstApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void answers(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
    print('ANSWER SELECTED');
  }

  Widget build(BuildContext context) {
    final questions = const [
      {
        'questionText': 'What is your name?',
        'answer': [
          {'answerText': 'Max', 'score': 3},
          {'answerText': 'Ed', 'score': 4},
          {'answerText': 'Will', 'score': 1},
          {'answerText': 'Steve', 'score': 2}
        ]
      },
      {
        'questionText': 'What is your favorite colour',
        'answer': [
          {'answerText': 'Red', 'score': 3},
          {'answerText': 'Blue', 'score': 2},
          {'answerText': 'Black', 'score': 4},
          {'answerText': 'Green', 'score': 1}
        ]
      },
      {
        'questionText': 'What is your favorite animal',
        'answer': [
          {'answerText': 'Lion', 'score': 4},
          {'answerText': 'Tiger', 'score': 3},
          {'answerText': 'Elephant', 'score': 1},
          {'answerText': 'Dog', 'score': 2}
        ]
      },
      {
        'questionText': 'What is your favorite city',
        'answer': [
          {'answerText': 'Paris', 'score': 3},
          {'answerText': 'London', 'score': 1},
          {'answerText': 'New York', 'score': 2},
          {'answerText': 'Vienna', 'score': 4}
        ]
      },
      {
        'questionText': 'What is your favorite Game of Thrones house',
        'answer': [
          {'answerText': 'Stark', 'score': 1},
          {'answerText': 'Lannister', 'score': 4},
          {'answerText': 'Baratheon', 'score': 3},
          {'answerText': 'Targaryen', 'score': 5},
          {'answerText': 'Tully', 'score': 2}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FIRST APP')),
      body: questionIndex < questions.length
          ? QuizApp(questions, () => answers, questionIndex)
          : Result(totalScore),
    ));
  }
}

void main() {
  runApp(MyFirstApp());
}
