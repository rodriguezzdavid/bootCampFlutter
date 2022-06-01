import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

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
    return Column(
      children: _trasactionList(),
    );
  }
}
