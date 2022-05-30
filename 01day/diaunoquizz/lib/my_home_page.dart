// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIdex = 0;

  void answerQuestion() {    
    setState(() {
      questionIdex++;
    });    
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
