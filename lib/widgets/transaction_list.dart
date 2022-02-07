import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class listTransaction extends StatelessWidget {
  final List<Transaction> transactions;
  listTransaction(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((trans) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 25,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 3.5,
                  )),
                  padding: EdgeInsets.all(8),
                  width: 120,
                  child: Text(
                    '\$${trans.amount}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trans.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    DateFormat().format(
                      trans.date,
                    ),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
