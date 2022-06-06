import 'package:get/get.dart';
import 'package:getxarchitecture/app/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  Future<void> onReady() async {    
    super.onReady();    
    await _loadDataAsync();
  }

  Future<void> _loadDataAsync() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.offNamed(AppRoutes.home);
  }
}