import 'package:diaunogastos/widgets/new_transaction_card.dart';
import 'package:diaunogastos/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactionState extends StatefulWidget {
  const UserTransactionState({Key? key}) : super(key: key);

  @override
  State<UserTransactionState> createState() => _UserTransactionStateState();
}

class _UserTransactionStateState extends State<UserTransactionState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionList(),
        NewTransactionCard(),
      ],
    );
  }
}