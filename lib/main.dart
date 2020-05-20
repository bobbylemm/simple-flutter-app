import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var score = 0;
  final questions = const [
    {
      'question': 'what\'s is your favorite piece of technology?',
      'answer': [
        {'text': 'react', 'score': 2},
        {'text': 'flutter', 'score': 1},
        {'text': 'golang', 'score': 4}
      ]
    },
    {
      'question': 'when did you begin coding?',
      'answer': [
        {'text': '2018', 'score': 2},
        {'text': '2015', 'score': 1},
        {'text': '2019', 'score': 3}
      ]
    },
    {
      'question': 'what is your best car?',
      'answer': [
        {'text': 'ferrari', 'score': 1},
        {'text': 'lamborgini', 'score': 1},
        {'text': 'buggati', 'score': 2},
        {'text': 'range rover', 'score': 2},
        {'text': 'rolls royce', 'score': 2}
      ]
    },
  ];
  void _answerChosen(int questionScore) {
    if (_questionIndex < questions.length) {
      score += questionScore;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quiz application'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerHandler: _answerChosen,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(score),
      ),
    );
  }
}
