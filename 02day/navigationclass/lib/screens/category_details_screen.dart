import 'package:flutter/material.dart';
import 'package:navigationclass/models/category.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    final category = arguments["category"] as Category;

    final id = arguments["id"] as int;

    final subCategory = arguments["sub-category"] as Map<String, Object>;

    final subCategoryTitle = subCategory["sub-title"] as String;

    final details = arguments["details"] as Map<int, Object>;

    final mapInfo = details[1] as String;

    // 1. Crear una nueva pantalla
    // 2. Agregar navegación con namedRoute y navegar a la nueva pantalla, enviándole la sub categoria
    // 3. Mostrar la título de la subcategoria centrado en la pantalla

    return Scaffold(
      appBar: AppBar(
        title: Text("Category details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(category.title),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sub category title"),
            )
          ],
        ),
      ),
    );
  }
}
