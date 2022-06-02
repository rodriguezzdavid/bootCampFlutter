import 'package:flutter/material.dart';
import 'package:navigationclass/data/dummy_data.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummyCategories.map((category) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.7),
                category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,              
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(15),
          child: Text(category.title),
        );
      }).toList()
    );
  }
}
