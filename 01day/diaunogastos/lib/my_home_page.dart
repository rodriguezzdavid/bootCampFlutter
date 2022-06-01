import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My expenses"),
      ),
      body: Column(
        children: const [
          Card(
            child: SizedBox(
              width: 200,
              child: Text("Chart"),
            ),
          ),
          Card(
            child: Text("Transactionlist"),
          ),
        ],
      ),
    );
  }
}
