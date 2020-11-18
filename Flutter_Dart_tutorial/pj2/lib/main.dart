import 'package:flutter/material.dart';
import 'package:pj2/widgets/user_transactions.dart';
import 'package:pj2/widgets/new_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //String titleInput;
  //String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Container(
        //enable scrolling
        child: Column(
          //Column need width as much as children need
          mainAxisAlignment: MainAxisAlignment
              .start, //main axis is vertical axis for column, opposite for rows
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //cross axis is horizontal axis for column, opposite for rows
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 1,
              ),
            ),
            //Size of card depends on the child
            //and size of Text depends on parents. Thus, we have to add Container to change size
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
