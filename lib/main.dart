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
      'What is your name?',
      'What is your favorite colour',
      'What is your favorite animal',
      'What is your favorite city'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FIRST APP')),
      body: Column(
        children: [
          Question(questions[questionIndex]),
          Answer(answers),
          Answer(answers),
          Answer(answers),
        ],
      ),
    ));
  }
}

void main() {
  runApp(MyFirstApp());
}
