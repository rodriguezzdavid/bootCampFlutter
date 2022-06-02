import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';
import 'package:navigationclass/screens/category_details_screen.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({
    required this.category,
    Key? key,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void _selectedCategory() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) {
            return const CategoryDetailsScreen();
          },
        ),
      );
    }

    return InkWell(
      splashColor: theme.primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        _selectedCategory();
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
