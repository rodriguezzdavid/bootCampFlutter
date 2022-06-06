import 'package:get/get.dart';
import 'package:getxlearning/models/app_user.dart';

class UserDetailsController extends GetxController {
  AppUser? user;

  @override
  void onInit() {    
    super.onInit();
    user = Get.arguments as AppUser;
  }
}