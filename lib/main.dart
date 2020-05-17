import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quiz application'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerChosen, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
