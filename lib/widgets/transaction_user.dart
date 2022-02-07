import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/widgets/transaction_list.dart';
import 'package:expenses_app/widgets/transaction_new.dart';
import 'package:flutter/cupertino.dart';

class userTransaction extends StatefulWidget {
  @override
  _userTransactionState createState() => _userTransactionState();
}

// ignore: camel_case_types
class _userTransactionState extends State<userTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: '1',
      title: 'One Piece Figure',
      amount: 210.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Beer',
      amount: 3.99,
      date: DateTime.now(),
    ),
  ];

  void newTransaction(String title, double amount) {
    final new_exprense = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(new_exprense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addTrasaction(newTransaction),
        listTransaction(_userTransaction),
      ],
    );
  }
}
