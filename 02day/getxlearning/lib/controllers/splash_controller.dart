// ignore_for_file: avoid_print, unnecessary_overrides

import 'package:get/get.dart';
import 'package:getxlearning/pages/products_page.dart';
import 'package:getxlearning/pages/users_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // print("SplashController:onInit same as initState in Stateful widget");
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    // print(
    //     "SplashController:onReady... here we can navigate, show snackbars and so on");
    await loadDataAsync();
  }

  Future<void> loadDataAsync() async {
    // print("Loading user data...");
    await Future.delayed(const Duration(seconds: 3));
    // print("The loading was completed");

    // Get.off(() {
    //   return const UsersPage();
    // });
    Get.off(() {
      return const ProductsPage();
    });
  }

  @override
  void onClose() {
    super.onClose();
    // print("SplashController:onClose... dispose resources");
  }
}
