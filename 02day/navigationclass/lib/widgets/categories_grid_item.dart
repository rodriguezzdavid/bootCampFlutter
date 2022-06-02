import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
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
  }
}
