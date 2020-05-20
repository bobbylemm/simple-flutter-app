import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerHandler;

  Quiz({@required this.questions, @required this.questionIndex, @required this.answerHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerHandler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
