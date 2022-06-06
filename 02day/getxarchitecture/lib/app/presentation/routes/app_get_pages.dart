import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/bindings.dart';
import 'package:getxarchitecture/app/modules/pages.dart';
import 'package:getxarchitecture/app/presentation/routes/app_routes.dart';

class AppGetPages {
  static final List<GetPage> androidPages = [
    GetPage(
      name: AppRoutes.homeAndroid,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];

  static final List<GetPage> iOSPages = [
    GetPage(
      name: AppRoutes.homeiOS,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
