import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function func;

  NewTransaction(this.func);

  void submitData(String) {
    this.func(titleController.text,
        double.parse(amountController.text)); //parse character to double
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              //same as onChanged: (val) {
              //  titleInput = val;
              //},
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              //same as onChanged: (val) {
              //  amountInput = val;
              //},
              keyboardType: TextInputType.number, //only gets number inputs
              onSubmitted: (_) => submitData(),
            ),
            Container(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text('Add Transaction'),
                onPressed: submitData,
              ),
            )
          ],
        ),
      ),
    );
  }
}
