import 'package:flutter/material.dart';

class YourScore extends StatelessWidget {
  const YourScore({
    Key? key,
    required this.totalScore,
  }) : super(key: key);

  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Text("Tu score es: $totalScore");
  }
}
