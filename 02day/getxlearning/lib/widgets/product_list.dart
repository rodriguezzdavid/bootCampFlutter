import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/product_controller.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      id: "product-list",
      builder: (productController) {        
        return ListView.builder(
          itemBuilder: (ctx, index) {
            final product = productController.products[index];
            return ListTile(              
              title: Text(product.name),
              subtitle: Text("${product.price}"),              
            );
          },
          itemCount: productController.products.length,
        );
      },
    );
  }
}
