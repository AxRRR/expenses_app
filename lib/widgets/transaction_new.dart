import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addTrasaction extends StatelessWidget {
  final Function addTransactionController;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  addTrasaction(this.addTransactionController);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) => titleValue = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountValue = value,
            ),
            FlatButton(
              child: Text('Add new expenses'),
              textColor: Colors.purple,
              onPressed: () => addTransactionController(
                titleController.text,
                double.parse(amountController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
