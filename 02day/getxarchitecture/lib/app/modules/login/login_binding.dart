import 'package:get/get.dart';
import 'package:getxarchitecture/app/business/repositories/security_repository.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {    
    Get.lazyPut(() => SecurityRepository());
    Get.lazyPut(() => LoginController());
  }
}
