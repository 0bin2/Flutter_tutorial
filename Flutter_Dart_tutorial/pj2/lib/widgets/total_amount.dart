import 'package:flutter/material.dart';
import '../models/transaction.dart';

class Totalamount extends StatelessWidget {
  final List<Transaction> userTransactions;

  Totalamount(this.userTransactions);
  double totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    userTransactions.map((tx) {
      print(tx.amount);
      totalAmount += tx.amount;
    });
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 2,
          ),
        ),
        padding: EdgeInsets.all(10),
        //decoration contains lot of crucial arguments to style
        child: Text(
          '\$ ${totalAmount}', //proper way for string interpolation
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.purple,
          ),
        ),
      ),
      color: Colors.red,
    );
  }
}
