import 'package:diaunogastos/data/transaction_data.dart';
import 'package:diaunogastos/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _trasactionList() {
    List<Widget> transactionList = [];

    for (var item in transactions) {
      transactionList.add(
        TransactionListItem(transaction: item),
      );
    }

    return transactionList;
  }

  String? titleTextInput;
  String? amountTextInput;

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
                      onChanged: (value) {                        
                        titleTextInput = value;
                      },                      
                    ),
                     TextField(
                      decoration: const InputDecoration(
                        labelText: "Cantidad",
                      ),
                      onChanged: (value) {
                        amountTextInput = value;
                      },
                      keyboardType: TextInputType.number,                      
                    ),
                    TextButton(
                      onPressed: () {
                        print("titleTextInput: $titleTextInput");
                        print("amountTextInput: $amountTextInput");
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
