// ignore_for_file: avoid_print
import 'package:diaunoquizz/column_result_widget.dart';
import 'package:diaunoquizz/questions_data.dart';
import 'package:diaunoquizz/your_score.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
    print("Answer question");
    print("questionIdex: $questionIndex");
  }

  void resetTest() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  // Formatear: Al guardar documento. ctrl + k + d. Alt + shift + f

  // 1. Nuevo widget en otro documento: YourScoreWidget
  // 2. Centrar el texto "tu score es..."
  // 3. Abajo del texto "tu score es..." agregar un botón que diga "reset"
  // 4. Al momento de dar click en el botón, reiniciar el test. Callback function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: questionIndex < questions.length
          ? ColumnResult(
              questions: questions,
              questionIndex: questionIndex,
              answerQuestion: answerQuestion,
            )
          : YourScore(
              totalScore: totalScore,
              callbackAction: resetTest,
            ),
    );
  }
}
