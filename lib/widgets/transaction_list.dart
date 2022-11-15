import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({Key? key, required this.transactions})
      : super(key: key);

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
