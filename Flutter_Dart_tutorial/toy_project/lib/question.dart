import 'package:flutter/material.dart';

//customized function
//by ctrl+clicking the class or operator, we can read the source code
class Question extends StatelessWidget {
  String questionText; //final : does not change after initialization

  Question(this.questionText);

  Question.deafault(this.questionText) {
    questionText = 'default text';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(
          50), //setting margin, use only to give specified margins
      child: Text(questionText,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
//by ctrl+clicking the class or operator, we can read the source code
