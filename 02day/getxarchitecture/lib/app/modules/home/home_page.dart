import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';
import 'package:getxarchitecture/app/utils/app_config/config_reader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Production app"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,            
              children: [
                Text("ConfigReader.domainUrl: ${ConfigReader.domainUrl}"),
                Text("ConfigReader.testData: ${ConfigReader.testData}"),
                Text("ConfigReader.isProduction: ${ConfigReader.isProduction}"),
                Text("ConfigReader.deviewPreview: ${ConfigReader.deviewPreview}"),
              ],
            ),
          ),
        );
      },
    );
  }
}
