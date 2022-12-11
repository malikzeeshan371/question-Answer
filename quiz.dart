// ignore_for_file: non_constant_identifier_names, unused_import, unnecessary_this

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/answer.dart';
import 'package:flutter_1/question.dart';

class Quiz extends StatelessWidget {
  //const Quiz({super.key, required this.question});

  final List<Map<String, Object>> question;
  //final VoidCallback answerQuestion;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.question,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[questionIndex]['questionText'] as String),
      ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score'] as int),
            answer['Text'] as String);
      }).toList()

      // Answer(answerQuestion),
      //Answer(answerQuestion)
      //Answer(),
      //Answer(),
    ]);
  }
}
