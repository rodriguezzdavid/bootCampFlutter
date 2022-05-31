import 'package:diaunoquizz/answer_button_widget.dart';
import 'package:diaunoquizz/question.dart';
import 'package:diaunoquizz/question_widget.dart';
import 'package:flutter/material.dart';

class ColumnResult extends StatelessWidget {
  const ColumnResult({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    Key? key,
  }) : super(key: key);

  final List<Question> questions;
  final int questionIndex;
  final Function(int answerScore) answerQuestion;  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuestionWidget(questions[questionIndex].title),
        ...(questions[questionIndex].answers)
            .map((answerText) {
          return AnswerButton(
            onPressedFunction: () {
              answerQuestion(answerText.score);
            },
            buttonText: answerText.title,
          );
        }).toList()
      ],
    );
  }
}
