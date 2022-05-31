import 'package:flutter/material.dart';

class YourScore extends StatelessWidget {
  const YourScore({
    Key? key,
    required this.totalScore,
    required this.callbackAction,
  }) : super(key: key);

  final int totalScore;
  final Function() callbackAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tu score es: $totalScore"),
          ElevatedButton(
            onPressed: callbackAction,
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
