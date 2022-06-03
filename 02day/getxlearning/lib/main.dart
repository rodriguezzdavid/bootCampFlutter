import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 1. Crear una carpeta "models" y agregar una clase app_user.dart (AppUser) con id, email, firstName, lastName, avatar
  // 2. Crear una página users_page.dart
  // 3. Crear un controllador users_controller.dart y van a vincular la página y el controlador

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
