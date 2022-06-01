import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/new_transaction_card.dart';
import 'package:diaunogastos/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactionState extends StatefulWidget {
  const UserTransactionState({Key? key}) : super(key: key);

  @override
  State<UserTransactionState> createState() => _UserTransactionStateState();
}

class _UserTransactionStateState extends State<UserTransactionState> {
  final List<Transaction> transactions = [
    Transaction(
      id: "1",
      title: "Gas",
      amount: 200,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String titleParam, double amountParam) {
    // print("_addNewTransaction");
    final transaction = Transaction(
      id: DateTime.now().toString(),
      title: titleParam,
      amount: amountParam,
      date: DateTime.now(),
    );

    // print("transactions.length: ${transactions.length}");

    setState(() {
      transactions.add(transaction);
    });

    // print("transactions.length: ${transactions.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(
          transactions: transactions,
        ),
        NewTransactionCard(
          callbackFunction: _addNewTransaction,
        ),
      ],
    );
  }
}
