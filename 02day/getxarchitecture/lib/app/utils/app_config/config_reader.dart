import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:getxarchitecture/app/environment.dart';

class ConfigReader {
  static Map<String, dynamic> _config = {};
  static Environment environment = Environment.development;

  static Future<void> initialize(Environment env) async {
    environment = env;
    String configString = "";

    switch (environment) {
      case Environment.development:
        configString =
            await rootBundle.loadString("config/app_config_development.json");
        break;
      default:
        configString =
            await rootBundle.loadString("config/app_config_development.json");
        break;
    }

    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String get domainUrl {
    return _config["domainUrl"] as String;
  }

  static bool get isProduction {
    return _config["isProduction"] as bool;
  }

  static bool get testData {
    return _config["testData"] as bool;
  }

  static bool get deviewPreview {
    return _config["deviewPreview"] as bool;
  }
}
