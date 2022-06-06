import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getxlearning/models/product.dart';

class ProductController extends GetxController {
  List<Product> products = [];

  @override
  Future<void> onInit() async {    
    super.onInit();
    await _loadProductsAsync();
  }

  Future<void> _loadProductsAsync() async {
    final productString = await rootBundle.loadString("assets/products.json");

    products = (jsonDecode(productString) as List<dynamic>).map((product) {
      return Product.fromJSON(product);
    }).toList();
  }
}