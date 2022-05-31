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
      body: Container(
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [            
            QuestionWidget(questions[questionIndex]),
            AnswerButton(
              onPressedFunction: answerQuestion,
              buttonText: "Respuesta uno",
            ),
            AnswerButton(
              buttonText: "Respuesta dos",
              onPressedFunction: answerQuestion,
            ),
            AnswerButton(
              buttonText: "Respuesta tres",
              onPressedFunction: answerQuestion,
            ),            
          ],
        ),
      ),
    );
  }
}
