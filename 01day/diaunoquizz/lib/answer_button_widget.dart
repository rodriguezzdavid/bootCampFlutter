import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.buttonText,
    required this.onPressedFunction,
    this.optionalText,
    Key? key,
  }) : super(key: key);

  final Function() onPressedFunction;
  final String buttonText;  
  final String? optionalText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      child: Text(buttonText),
    );
  }
}
