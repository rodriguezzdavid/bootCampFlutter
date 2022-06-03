import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 1. Hacer un update por id al user list cuando termine de cargar los usuarios
  // 2. Crear una función en UsersController para determinar si un usuario es favorito o no y actualizar la vista
  // 3. Arriba del users list, mostrar un texto con el total de usuarios favoritos
  // 4. Si el usuario es favorito, mostrar el corazón de color rojo

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
