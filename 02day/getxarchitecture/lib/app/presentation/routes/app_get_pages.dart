import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/bindings.dart';
import 'package:getxarchitecture/app/modules/pages.dart';
import 'package:getxarchitecture/app/presentation/routes/app_routes.dart';

class AppGetPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
