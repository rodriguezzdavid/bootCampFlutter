import 'package:flutter/material.dart';

class NewTransactionCard extends StatelessWidget {
  NewTransactionCard({
    required this.callbackFunction,
    Key? key,
  }) : super(key: key);

  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  final titleController = TextEditingController(text: "Comida controller");
  final amountController = TextEditingController(text: "300");

  final Function(String title, double amount) callbackFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
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
                final title = titleController.text;
                final amount = double.parse(amountController.text);
                callbackFunction(title, amount);
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
