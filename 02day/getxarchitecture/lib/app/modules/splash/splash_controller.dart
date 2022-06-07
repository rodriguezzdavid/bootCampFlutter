import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';
import 'package:getxarchitecture/app/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  final configurationController = Get.find<ConfigurationController>();
  @override
  Future<void> onReady() async {
    super.onReady();
    await _loadDataAsync();
  }

  Future<void> _loadDataAsync() async {
    // await Future.delayed(const Duration(seconds: 3));

    // final route = configurationController.isIOS
    //     ? AppRoutes.homeiOS
    //     : AppRoutes.homeAndroid;

    const route = AppRoutes.loginAndroid;

    Get.offNamed(route);
  }
}
