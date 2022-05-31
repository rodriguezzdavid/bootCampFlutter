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
      color: Colors.purple,
      height: 250,
      child: Column(        
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: Colors.red,
            child: Text("Tu score es: $totalScore"),
          ),
          ElevatedButton(
            onPressed: callbackAction,
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
