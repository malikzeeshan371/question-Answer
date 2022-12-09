// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const MyWidget({super.key});
  String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(12),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 38),
          textAlign: TextAlign.center,
        ));
  }
}
