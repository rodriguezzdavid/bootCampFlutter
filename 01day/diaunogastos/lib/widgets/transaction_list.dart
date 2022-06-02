import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    required this.transactions,
    Key? key,
  }) : super(key: key);

  final List<Transaction> transactions;

  List<Widget> _trasactionList() {
    List<Widget> transactionList = [];

    for (var item in transactions) {
      transactionList.add(
        TransactionListItem(transaction: item),
      );
    }

    return transactionList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 250,
      child: ListView(
        children: _trasactionList(),
      ),
    );
  }
}
