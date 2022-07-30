// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:starting_with_flutter/question.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Question(questions[questionIndex]),
          ElevatedButton(
            onPressed: answers,
            child: Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: answers,
            child: Text("Answer 2"),
          ),
          ElevatedButton(
            onPressed: answers,
            child: Text("Answer 3"),
          ),
        ],
      ),
    ));
  }
}

void main() {
  runApp(MyFirstApp());
}
