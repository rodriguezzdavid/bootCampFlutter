import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sub category"),
      ),
      body: Center(
        child: Text(category.subCategory!.title),
      ),
    );
  }
}
