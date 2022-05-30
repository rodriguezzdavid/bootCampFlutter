import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  int questionIdex = 0;
  final questions = [
    "¿Color favorito?",
    "¿Animal favorito?",
    "Comida favorita?",
    "Musica favorita?",
  ];

  void answerQuestion() {
    print("Answer question");
  }

  @override
  Widget build(BuildContext context) {      
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: Column(
        children: [
          Text(questions[questionIdex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text("Respuesta uno"),
          ),
          ElevatedButton(
            onPressed: () {
              print("Respuesta dos, función anónima");
            },
            child: const Text("Respuesta dos"),
          ),
          ElevatedButton(
            onPressed: () => print("Respuesta tres, arrow function"),
            child: const Text("Respuesta tres"),
          ),
        ],
      ),
    );
  }
}
