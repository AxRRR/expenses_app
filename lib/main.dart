import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/material.dart';

import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: key,
      title: 'Expenses App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.purple,
              child: Text('CHARTTTT!'),
            ),
          ),
          Column(
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
                          width: 5,
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
                          trans.date.toString(),
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
          )
        ],
      ),
    );
  }
}
