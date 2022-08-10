// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:starting_with_flutter/question.dart';
import 'package:starting_with_flutter/answer.dart';

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyFirstApp> {
  var questionIndex = 0;
  void answers() {
    setState(() {
      questionIndex += 1;
      if (questionIndex > 3) questionIndex = 0;
    });
    print('ANSWER SELECTED');
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your name?',
        'answer': ['Max', 'Ed', 'Will', 'Steve']
      },
      {
        'questionText': 'What is your favorite colour',
        'answer': ['Red', 'Blue', 'Black', 'Green']
      },
      {
        'questionText': 'What is your favorite animal',
        'answer': ['Lion', 'Tiger', 'Elephant', 'Dog']
      },
      {
        'questionText': 'What is your favorite city',
        'answer': ['Paris', 'London', 'New York', 'Vienna']
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FIRST APP')),
      body: Column(
        children: [
          Question(questions[questionIndex]["questionText"] as String),
          Answer(questions[questionIndex]['answer'] as List<String>)
              .map((answer) {
            return Answer(answers, answer);
          }),
        ],
      ),
    ));
  }
}

void main() {
  runApp(MyFirstApp());
}
