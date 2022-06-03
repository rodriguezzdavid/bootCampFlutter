import 'package:flutter/material.dart';
import 'package:navigationclass/screens/categories_screen.dart';
import 'package:navigationclass/screens/category_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final themeData = ThemeData(
    // primarySwatch: Colors.blue,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      secondary: Colors.amber,
    ),
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          subtitle1: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
  );

  final appRoutes = {
    // "/category-details": (ctx) => const CategoryDetailsScreen()
    "/category-details": (ctx) {
      return const CategoryDetailsScreen();
    }
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals app",
      theme: themeData,
      home: const CategoriesScreen(),
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
    );
  }
}
