// ignore_for_file: avoid_print

import 'package:diaunoquizz/answer_button_widget.dart';
import 'package:diaunoquizz/question_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print("Answer question");
    print("questionIdex: $questionIndex");
  }

  // Formatear: Al guardar documento. ctrl + k + d. Alt + shift + f

  final questions = [
    {
      "questionText": "Color favorito?",
      "answers": ["Rojo", "Verde", "Amarillo", "Morado"],
    },
    {
      "questionText": "Animal favorito?",
      "answers": ["Caballo", "León", "Perro", "Gato", "Pinguino", "Elefante"],
    },
    {
      "questionText": "Comida favorita?",
      "answers": ["Gallo Pinto", "Tacos", "Chifrijo", "Casado"],
    },
    {
      "questionText": "Música favorita?",
      "answers": ["Rock", "Instrumental"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuestionWidget(questions[questionIndex]["questionText"] as String),
            ...(questions[questionIndex]["answers"] as List<String>).map((answerText) {
              return AnswerButton(
                onPressedFunction: answerQuestion,
                buttonText: answerText,
              );
            }).toList()            
          ],
        ),
      ),
    );
  }
}
