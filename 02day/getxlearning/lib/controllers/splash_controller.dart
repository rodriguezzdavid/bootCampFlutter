// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:getxlearning/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("SplashController:onInit same as initState in Stateful widget");
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    print(
        "SplashController:onReady... here we can navigate, show snackbars and so on");
    await loadDataAsync();
  }

  Future<void> loadDataAsync() async {
    print("Loading user data...");
    await Future.delayed(const Duration(seconds: 3));
    print("The loading was completed");

    // Get.to(() {
    //   return const HomePage();
    // });

    Get.off(() {
      return const HomePage();
    });
  }

  @override
  void onClose() {
    super.onClose();
    print("SplashController:onClose... dispose resources");
  }
}
