import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/environment.dart';
import 'package:getxarchitecture/app/modules/bindings.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';
import 'package:getxarchitecture/app/modules/pages.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp(
    this.environment, {
    Key? key,
  }) : super(key: key);

  final Environment environment;

  @override
  Widget build(BuildContext context) {

    final configurationController = ConfigurationController();
    configurationController.environment = environment;

    Get.put(configurationController);

    // 1. Crear un module que se llame "splash"... crear los 3 achivos
    // 2. Pueden tomar el mismo diseño que el splash anterior
    // 3. En lugar de iniciar la app en HomePage, se va a iniciar en SplashPage
    
    return GetMaterialApp(
      title: "Android app",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      initialBinding: SplashBinding(),
    );
  }
}
