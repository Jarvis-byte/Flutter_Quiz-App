import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }


}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answer': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answer': [
          {'text': 'Snake', 'score': 11},
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9}
        ]
      },
      {
        'questionText': 'What\'s your favourite Friend?',
        'answer': [
          {'text': 'Arka', 'score': 1},
          {'text': 'Arghya', 'score': 9},
          {'text': 'Amit', 'score': 5},
          {'text': 'Ram', 'score': 15}
        ]
      }
    ];
    void ButtonPressed(int score) {
      totalScore += score;

      setState(() {
        if (questionIndex < questions.length) {
          questionIndex = questionIndex + 1;
        } else {
          questionIndex = 0;
        }
      });

      print(questionIndex);
    }

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: questionIndex < questions.length
              ? Quiz(questions, ButtonPressed, questionIndex)
              : Result(totalScore, resetQuiz),
        ));
  }
}
