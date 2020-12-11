import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  var questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(50) ,
      padding:EdgeInsets.all(20) ,
      child:Text(
      questiontext,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);
  }
}
