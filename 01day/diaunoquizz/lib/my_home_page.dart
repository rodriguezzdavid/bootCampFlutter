import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  var questionIdex = 0;

  void answerQuestion() {    
    questionIdex++;
    print("Answer question");
    print("questionIdex: $questionIdex");
  }

  final questions = [
    "¿Color favorito?",
    "¿Animal favorito?",
    "Comida favorita?",
    "Musica favorita?",
  ];

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
            onPressed: answerQuestion,
            child: const Text("Respuesta dos"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text("Respuesta tres"),
          ),
        ],
      ),
    );
  }
}
