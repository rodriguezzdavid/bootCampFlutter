import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) {
        return Scaffold(
          body: Center(
            child: Text(homeController.configurationController.environment.toString()),
          ),
        );
      },
    );
  }
}
