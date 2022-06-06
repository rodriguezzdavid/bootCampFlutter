import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/environment.dart';
import 'package:getxarchitecture/app/modules/bindings.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';
import 'package:getxarchitecture/app/modules/pages.dart';
import 'package:getxarchitecture/app/presentation/routes/app_get_pages.dart';

class IOSApp extends StatelessWidget {
  const IOSApp(
    this.environment, {
    Key? key,
  }) : super(key: key);

  final Environment environment;

  @override
  Widget build(BuildContext context) {

    final configurationController = ConfigurationController();
    configurationController.environment = environment;

    Get.put(configurationController);

    return GetCupertinoApp(
      title: "iOS app",
      theme: const CupertinoThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppGetPages.iOSPages,
    );
  }
}
