import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}