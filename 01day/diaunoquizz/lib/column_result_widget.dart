import 'package:diaunoquizz/answer_button_widget.dart';
import 'package:diaunoquizz/question_widget.dart';
import 'package:flutter/material.dart';

class ColumnResult extends StatelessWidget {
  const ColumnResult({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuestionWidget(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]["answers"] as List<String>)
            .map((answerText) {
          return AnswerButton(
            onPressedFunction: answerQuestion,
            buttonText: answerText,
          );
        }).toList()
      ],
    );
  }
}
