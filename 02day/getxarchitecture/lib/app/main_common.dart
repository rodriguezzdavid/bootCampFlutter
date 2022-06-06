import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxarchitecture/app/android_app.dart';
import 'package:getxarchitecture/app/environment.dart';
import 'package:getxarchitecture/app/ios_app.dart';
import 'package:getxarchitecture/app/utils/app_config/config_reader.dart';

Future<void> mainAndroidCommon(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize(env);
  await GetStorage.init();

  print("ConfigReader.deviewPreview");
  print(ConfigReader.deviewPreview);

  final isIOS = GetPlatform.isIOS;

  runApp(
    DevicePreview(
      enabled: ConfigReader.deviewPreview,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) {
        return isIOS ? IOSApp(env) : AndroidApp(env);
      },
    ),
  );
}
