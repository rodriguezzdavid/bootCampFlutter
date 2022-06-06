import 'package:flutter/material.dart';

class LateExample extends StatefulWidget {
  LateExample({Key? key}) : super(key: key);

  @override
  State<LateExample> createState() => _LateExampleState();
}

class _LateExampleState extends State<LateExample> {
  // Esto funciona
  
  late final int possibleNullLate;
  final int? yesValue = 10;

  @override
  void initState() {
    super.initState();
    // possibleNullLate = 10;
  }

  @override
  Widget build(BuildContext context) {
    final result = 5 + possibleNullLate;
    return Text(result.toString());
  }
}
