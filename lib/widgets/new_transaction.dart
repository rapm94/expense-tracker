import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class NewTransaction extends StatelessWidget {
  final amountController = TextEditingController();
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController),
          TextButton(
            onPressed: () {
              print(amountController.text);
            },
            child: const Text('Add Transaction'),
          ),
        ]),
      ),
    );
  }
}
