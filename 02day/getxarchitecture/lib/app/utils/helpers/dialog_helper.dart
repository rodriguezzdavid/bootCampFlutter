import 'package:get/get.dart';

class DialogHelper {
  // Show snack bar
  static void showErrorSnackbar(String? message) {
    String errorMessage = message ??= "There was an error";
    Get.snackbar(
      "Error",
      errorMessage,
      duration: const Duration(seconds: 5),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
