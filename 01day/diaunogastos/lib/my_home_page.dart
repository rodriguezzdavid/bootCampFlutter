import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _trasactionList() {
    List<Widget> transactionList = [];

    // Modificar TransactionListItem para mostrar el amount, titulo y fecha
    // El card debe de tomar toda el ancho de la pantalla

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
            Column(
              children: _trasactionList(),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Título",
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Cantidad",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Guardar"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
