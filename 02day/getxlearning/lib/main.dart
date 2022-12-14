import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/product_controller.dart';
import 'package:getxlearning/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(ProductController());

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
