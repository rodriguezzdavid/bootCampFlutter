import 'package:flutter/material.dart';

class SingleChildPage extends StatelessWidget {
  const SingleChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              color: Colors.purple,
            ),
            Container(
              height: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
