import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(this.questionTitle, {Key? key}) : super(key: key);

  final String questionTitle;

  @override
  Widget build(BuildContext context) {
    return Text(questionTitle);
  }
}