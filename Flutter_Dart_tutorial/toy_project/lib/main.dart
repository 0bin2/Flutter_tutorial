import 'package:flutter/material.dart';
import './question.dart';

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
  //constructor by repeating name
  fun({String inputs, int inputi}) {
    //{} for named arguements
    //add @required for required vars

    this.name = inputs;
  } // = Myapp({this.name=inputs, int inputi})

  void whatToDo() {
    setState(() {
      qIndex = qIndex + 1;
    }); // setting state, only this could change the widget which is presented
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    //This is our entire app
    var questionList = ['q1', 'q2'];

    //build is responsible for all widget construction
    return MaterialApp(
      home: Scaffold(
        // marterial for base page design(styling) such as color scheme, color etc.
        appBar: AppBar(title: Text('My First App')), //head bar??
        body: Scaffold(
            appBar: AppBar(
              title: Question('kingbingodbin'),
            ),
            body: Column(children: <Widget>[
              Text('are you tired?'),
              RaisedButton(
                child: Text(questionList.elementAt(0)), // same as obj[index]
                onPressed: whatToDo, // onPressed takes a function,
                // [a function]() is the return value of [a function] not the function itself.
                // the function is run when RaisedButton is executed not when the button is pressed.
                // just giving [a function], we allocate the pointer for that function which is approriate in this situation
              ),
              RaisedButton(
                  child: Text(questionList[1]),
                  onPressed: () {
                    print('zzzz');
                  } // same as () => print('shit');, one line function for unnamed function
                  ),
              RaisedButton(
                  child: Text(questionList[qIndex]),
                  onPressed: () {
                    print(questionList[qIndex]);
                  } // same as () => print('shit');, one line function for unnamed function
                  ),
            ]) // []: list,
            ), // content
      ),
    );
  }
}
