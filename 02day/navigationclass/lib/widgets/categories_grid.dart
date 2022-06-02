import 'package:flutter/material.dart';
import 'package:navigationclass/data/dummy_data.dart';
import 'package:navigationclass/widgets/categories_grid_item.dart';

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
        return CategoriesGridItem(
          category: category,
        );
      }).toList(),
    );
  }
}
