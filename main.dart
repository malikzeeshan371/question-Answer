// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
// Widget build(BuildContext context){
//   var question = ['What is your Fav Color', 'What is your Fav Animal'];
//   return MaterialApp(home: Scaffold(
//     appBar: AppBar(
//       title: Text('My First App'),),
//      // body: Text('Body of My App'),
//      body: Column(
//       children: <Widget>[
//         Text('The Question!'),
//         ElevatedButton(child: Text('Answer 1'), onPressed: null,),
//         ElevatedButton(child: Text('Answer 1'),onPressed: null),
//         ElevatedButton(child: Text('Answer 1'),onPressed: null),
//       ],
//      ),
//     ),
//   );
// }
// }

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides, avoid_print, unused_import

//import 'dart:ui';

import 'package:flutter_1/answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/question.dart';
import 'package:flutter_1/quiz.dart';
import 'package:flutter_1/result.dart';
//import './question.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatefulWidget{

//   @override
//   State<StatefulWidget> createState() {
// ignore: todo
//     // TODO: implement createState
//     //throw UnimplementedError();
//     return MyAppState();
//   }

// }

// class MyAppState extends State<MyApp> {

// void answerQuestion() {
//   setState((){

//     questionIndex = questionIndex + 1;
//   });
//   questionIndex = questionIndex + 1;
//   //print("Answer Chosen");
//   print(questionIndex);
// }
// }

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  // int score = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    // print("Answer Chosen");
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What is your fav color',
        'answer': [
          {'Text': 'black', 'score': 2},
          {'Text': 'orange', 'score': 5},
          {'Text': 'white', 'score': 8},
          {'Text': 'blue', 'score': 7}
        ]
      },
      {
        'questionText': 'Your Fav animal',
        'answer': [
          {'Text': 'dog', 'score': 8},
          {'Text': 'horse', 'score': 4},
          {'Text': 'Lion', 'score': 5}
        ]
      }
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: questionIndex < question.length
                ? Quiz(
                    question: question,
                    answerQuestion: answerQuestion,
                    questionIndex: questionIndex)
                : Result(totalScore, resetQuiz)));

    // Center(
    //     child: Text('You did it'),
    //   )

    // Column(children: [
    //     Question(question[questionIndex]['questionText'] as String),
    //     ...(question[questionIndex]['answer'] as List<String>)
    //         .map((answer) {
    //       return Answer(answerQuestion, answer);
    //     }).toList()

    //     // Answer(answerQuestion),
    //     //Answer(answerQuestion)
    //     //Answer(),
    //     //Answer(),
    //   ])
  }
}
