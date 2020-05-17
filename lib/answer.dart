import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answer;
  Answer(this.answerHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.black87,
        textColor: Colors.white,
        child: Text(
          answer,
        ),
        onPressed: answerHandler,
      ),
    );
  }
}
