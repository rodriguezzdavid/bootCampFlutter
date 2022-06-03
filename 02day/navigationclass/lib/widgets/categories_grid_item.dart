import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';
import 'package:navigationclass/screens/category_details_screen.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category category;

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      "/category-details",
      arguments: {
        "id": 1,
        "sub-category": {
          "sub-title": "This is a subtitle",
        },
        "details": {
          1: "This is a Map<int, String>",
        },
        "category": category,
      },
      // arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      splashColor: theme.primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        _selectedCategory(context);
      },
      child: Container(
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
        child: Text(
          category.title,
          style: theme.textTheme.subtitle1,
        ),
      ),
    );
  }
}
