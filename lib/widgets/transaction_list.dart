import 'package:expense_tracker/models/transaction.dart';
import 'package:expense_tracker/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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
    return Column(
      children: transactions.map(
        (tx) {
          return TransactionCard(
            key: ValueKey(tx.id),
            tx: tx,
          );
        },
      ).toList(),
    );
  }
}
