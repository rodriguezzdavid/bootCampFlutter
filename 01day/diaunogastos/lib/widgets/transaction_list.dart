import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    required this.transactions,
    Key? key,
  }) : super(key: key);

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final transactionItem = transactions[index];
        return TransactionListItem(transaction: transactionItem);
      },
      itemCount: transactions.length,
    );
  }
}
