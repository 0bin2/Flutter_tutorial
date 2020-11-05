import 'package:ex1/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  //takes object, so have to be constructed
  runApp(pracApp());
}
//void main() => runApp(MyApp()); : can use => instead of {} if loc is one

//상속 extends
class pracApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pracAppState();
  }
}

class pracAppState extends State<pracApp> {
  //by changing the class name to _//classname, we can make private class which can only be called in this file
  //@override :decorator, overriding
  String name = 'dddd';
  var qIndex = 0;

  static const questionList = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _total_score = 0;
  //constructor by repeating name
  fun({String inputs, int inputi}) {
    //{} for named arguements
    //add @required for required vars

    this.name = inputs;
  } // = Myapp({this.name=inputs, int inputi})

  void whatToDo(int score) {
    // var aBool can have true, false values
    if (qIndex < (questionList.length - 1)) {
      print('question left');
    } // can use else, elsee if {}, and && or ||
    _total_score += score;
    setState(() {
      qIndex = qIndex + 1;
    }); // setting state, only this could change the widget which is presented
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    //This is our entire app
    //var questionList = ['q1', 'q2', 'q3', 'q4'];

    //build is responsible for all widget construction
    return MaterialApp(
      home: Scaffold(
        // marterial for base page design(styling) such as color scheme, color etc.
        appBar: AppBar(title: Text('My First App')), //head bar??
        body: Scaffold(
            appBar: AppBar(
              title: qIndex < questionList.length
                  ? Question(questionList[qIndex]['questionText'])
                  : Result(_total_score),
            ),
            body: qIndex < questionList.length
                ? Quiz(questionList, whatToDo, qIndex)
                : Result(_total_score) // []: list,
            ), // content
      ),
    );
  }
}
