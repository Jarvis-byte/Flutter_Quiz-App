import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var x;
  final String answerText;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          child: Text(answerText),
          onPressed: x,
        ));
  }
}
