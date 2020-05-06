import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerChosen() {
    print('answer chosen');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quiz application'),
        ),
        body: Column(
          children: <Widget>[
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerChosen,
            )
          ],
        ),
      ),
    );
  }
}