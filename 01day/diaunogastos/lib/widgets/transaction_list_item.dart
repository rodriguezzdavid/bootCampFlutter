import 'package:diaunogastos/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // width: double.infinity,
        child: Row(
          children: [
            Text(transaction.amount.toString()),
            Column(
              children: [
                Text(transaction.title),
                Text(transaction.date.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
