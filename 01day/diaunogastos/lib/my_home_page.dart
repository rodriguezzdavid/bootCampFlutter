import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _trasactionList() {
    List<Widget> transactionList = [];

    // Crear un widget, TransactionListItem, que va a ser un Card y va a mostrar el título de la transacción
    // TransactionListItem va a recibir en su constructor, un Transaction

    for (var item in transactions) {
      transactionList.add(
        TransactionListItem(transaction: item),        
      );
    }

    return transactionList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My expenses"),
      ),
      body: Container(
        // color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              child: SizedBox(
                width: 200,
                child: Text("Chart"),
              ),
            ),
            // Column(
            //   children: transactions.map((transaction) {
            //     return Card(
            //       child: Text(transaction.title),
            //     );
            //   }).toList()
            // ),
            Column(
              children: _trasactionList(),
            ),
          ],
        ),
      ),
    );
  }
}


