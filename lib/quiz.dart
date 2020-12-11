import 'package:flutter/cupertino.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final questionIndex;
  final Function ButtonPressed;

  Quiz(this.questions, this.ButtonPressed, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map(
            (answer) // "..." (Spread Operator)  is for spreading the list  into its individuals

            {
          return Answer(()=>ButtonPressed(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
