// ignore_for_file: use_key_in_widget_constructors
import 'package:expense_tracker/transaction.dart';
import 'package:flutter/material.dart';

import 'transaction_card.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 1,
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: h * 0.2,
            child: const Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              elevation: 5,
              color: Colors.blue,
              child: Text('CHART', textAlign: TextAlign.center),
            ),
          ),
          Card(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: const [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Title', border: OutlineInputBorder()),
                ),
                TextField(),
              ]),
            ),
          ),
          Column(
              children: transactions.map((tx) {
            return TransactionCard(tx: tx);
          }).toList())
        ],
      ),
    );
  }
}
