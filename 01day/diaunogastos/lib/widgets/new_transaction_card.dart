import 'package:flutter/material.dart';

class NewTransactionCard extends StatelessWidget {
  NewTransactionCard({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // final titleController = TextEditingController(text: "Comida controller");
  // final amountController = TextEditingController(text: "300");

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
