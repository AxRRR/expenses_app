// ignore_for_file: deprecated_member_use, unnecessary_const, prefer_const_constructors

import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/widgets/transaction_list.dart';
import 'package:expenses_app/widgets/transaction_new.dart';
import 'package:expenses_app/widgets/transaction_user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
// Metodo tradicional para escuchar las pulsaciones
  // late String titleValue;
  // late String amountValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.purple,
              child: Text('CHARTTTT!'),
            ),
          ),
          userTransaction(),
        ],
      ),
    );
  }
}
