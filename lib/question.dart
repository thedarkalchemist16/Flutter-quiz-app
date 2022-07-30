// ignore_for_file: sort_child_properties_last, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.teal,
        ));
  }
}
