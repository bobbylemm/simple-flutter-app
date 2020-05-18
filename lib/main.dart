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
  final questions = const [
    {
      'question': 'what\'s is your favorite piece of technology?',
      'answer': ['react', 'flutter', 'golang']
    },
    {
      'question': 'when did you begin coding?',
      'answer': ['2018', '2015', '2019']
    },
    {
      'question': 'what is your best car?',
      'answer': [
        'ferrari',
        'lamborgini',
        'buggati',
        'range rover',
        'rolls royce'
      ]
    },
  ];
  void _answerChosen() {
    if (_questionIndex < questions.length) {
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
            : Result(),
      ),
    );
  }
}
