import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You did it, here is your score $score'),
    );
  }
}
