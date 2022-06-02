import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category details"),
      ),
      body: Center(
        child: Text("Category"),
      ),
    );
  }
}
