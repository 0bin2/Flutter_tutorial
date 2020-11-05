import 'package:flutter/material.dart';

//customized function
//by ctrl+clicking the class or operator, we can read the source code
class Answer extends StatelessWidget {
  final Function
      selectHandler; //final cannot be changed once the app has been built
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(
          10), //setting margin, use only to give specified margins
      child: RaisedButton(
        child: Text(answerText,
            style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
//Answer(this.questionText); //initializtion

//Answer.deafault(this.questionText) {
//  questionText = 'default text';
//} //initialization with option

//by ctrl+clicking the class or operator, we can read the source code
