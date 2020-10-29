import 'package:flutter/material.dart';

void main() {
  //takes object, so have to be constructed
  runApp(pracApp());
}
//void main() => runApp(MyApp()); : can use => instead of {} if loc is one

//상속 extends
class pracApp extends StatelessWidget {
  var qIndex = 0;

  //@override :decorator, overriding
  String name = 'dddd';
  //constructor by repeating name
  Myapp({String inputs, int inputi}) {
    //{} for named arguements
    //add @required for required vars
    this.name = inputs;
  } // = Myapp({this.name=inputs, int inputi})

  @override
  Widget build(BuildContext context) {
    void whatToDo() {
      print('sleep early');

      qIndex = qIndex + 1;
    }

    var questionList = ['q1', 'q2'];

    //build is responsible for all widget construction
    return MaterialApp(
      home: Scaffold(
        // marterial for base page design(styling) such as color scheme, color etc.
        appBar: AppBar(title: Text('My First App')), //head bar??
        body: Scaffold(
            appBar: AppBar(
              title: Text('kingbingodbin'),
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
                    print('shit');
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
