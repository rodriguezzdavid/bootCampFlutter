import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
    this.questionTitle, {
    Key? key,
  }) : super(key: key);

  final String questionTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.purple,
      width: double.infinity,
      child: Text(
        questionTitle,
        style: TextStyle(
          fontSize: 28,
          color: Colors.grey[700],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
