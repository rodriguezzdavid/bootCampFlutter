import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (splashController) {        
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    );
  }
}
