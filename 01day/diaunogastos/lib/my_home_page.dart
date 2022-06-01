import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // final titleController = TextEditingController(text: "Comida controller");
  // final amountController = TextEditingController(text: "300");

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
                    TextField(
                      decoration: const InputDecoration(
                        labelText: "Título",
                      ),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: "Cantidad",
                      ),
                      controller: amountController,
                      keyboardType: TextInputType.number,
                    ),
                    TextButton(
                      onPressed: () {
                        print("titleTextInput: ${titleController.text}");
                        print("amountTextInput: ${amountController.text}");
                      },
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
