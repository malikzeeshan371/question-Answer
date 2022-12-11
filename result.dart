// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, recursive_getters

import 'package:flutter/material.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/answer.dart';
import 'package:flutter_1/question.dart';

class Result extends StatelessWidget {
  //const Result({super.key});
  //String phrase = '';

  final int resultScore;
  VoidCallback resetIt;
  Result(this.resultScore, this.resetIt);
  // String phrase;

  String get myScore {
    String phrase;

    if (resultScore >= 10) {
      phrase = 'You are awesome';
    } else if (resultScore <= 1) {
      phrase = 'you are exceptional';
    } else if (resultScore <= 8) {
      phrase = 'keep working hard';
    } else {
      phrase = 'hello';
    }

    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            // ignore: prefer_const_constructors
            body: Center(
                // ignore: prefer_const_constructors
                child: Column(children: <Widget>[
              Text(
                myScore,
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: resetIt, child: Text('Return back'))
            ]))));
  }
}
