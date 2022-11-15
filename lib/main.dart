// ignore_for_file: use_key_in_widget_constructors
import 'package:expense_tracker/models/transaction.dart';
import 'package:expense_tracker/widgets/transaction_card.dart';
import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:expense_tracker/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {

  final amountController = TextEditingController();
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
             const UserTransactions()
            ],
          ),
        ),
      ),
    );
  }
}
