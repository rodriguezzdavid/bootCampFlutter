import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({        
    Key? key,
  }) : super(key: key);    

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text("Category details"),
      ),
      body: Center(
        child: Text(category.title),
      ),
    );
  }
}
