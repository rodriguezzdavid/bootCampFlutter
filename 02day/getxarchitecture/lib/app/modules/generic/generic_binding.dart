import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class GenericBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenericController());
  }
}
