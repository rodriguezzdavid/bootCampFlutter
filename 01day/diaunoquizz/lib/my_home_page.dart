import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: Column(
        children: [
          const Text("Pregunta"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Respuesta uno"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Respuesta dos"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Respuesta tres"),
          ),          
        ],
      ),
    );
  }
}
