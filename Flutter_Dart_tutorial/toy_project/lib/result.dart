import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int final_score;
  Result(this.final_score);

  String get resultPhrase {
    var resultText = 'you did it ';
    if (final_score <= 8) {
      resultText = 'your score is ' + final_score.toString();
    } else if (final_score > 10) {
      resultText = 'great!! your score is ' + final_score.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, child: Text(resultPhrase));
  }
}
