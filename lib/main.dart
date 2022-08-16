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
      },
      {
        'questionText': 'What is your favorite Game of Thrones house',
        'answer': ['Stark', 'Lannister', 'Baratheon', 'Targaryen', 'Tully']
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FIRST APP')),
      body: questionIndex < questions.length
          ? Column(
              children: [
                Question(questions[questionIndex]["questionText"] as String),
                ...(questions[questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(answers, answer);
                }).toList(),
              ],
            )
          : Center(child: Text("You did it")),
    ));
  }
}

void main() {
  runApp(MyFirstApp());
}
