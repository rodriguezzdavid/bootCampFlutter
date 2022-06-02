import 'package:flutter/material.dart';
import 'package:navigationclass/widgets/categories_grid.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 5,
          right: 5,
        ),
        child: CategoriesGrid(),
      ),
    );
  }
}
