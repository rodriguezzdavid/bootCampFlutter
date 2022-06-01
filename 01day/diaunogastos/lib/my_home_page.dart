import 'package:diaunogastos/data/transaction_data.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _trasactionList() {
    List<Widget> transactionList = [];

    for (var item in transactions) {
      transactionList.add(
        Card(
          child: Text(item.title),
        ),
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
