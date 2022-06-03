import 'package:flutter/material.dart';

class Category {
  final String id, title;
  final Color color;
  final SubCategory? subCategory;

  Category({
    required this.id,
    required this.title,
    required this.color,
    this.subCategory,
  });
}

class SubCategory {
  final String id, title;  

  SubCategory({
    required this.id,
    required this.title,    
  });
}
