import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
