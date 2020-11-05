import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function whatToDo;
  final qIndex;
  Quiz(
    @required this.questionList,
    @required this.whatToDo,
    @required this.qIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      //optional widget, if ? iftrue : iffalse
      //Question.deafault(),
      RaisedButton(
        child: Text(
            questionList.elementAt(0)['questionText']), // same as obj[index]
        onPressed: () => whatToDo(0), // onPressed takes a function,
        // [a function]() is the return value of [a function] not the function itself.
        // the function is run when RaisedButton is executed not when the button is pressed.
        // just giving [a function], we allocate the pointer for that function which is approriate in this situation
      ),
      ...(questionList[qIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        // ... pull all the individual values in the list and put them where ... is typed
        return Answer(() => whatToDo(answer['score']), answer['text']);
      }).toList() // .map iterates all values in the list, has to be transformed to list
    ]);
  }
}
