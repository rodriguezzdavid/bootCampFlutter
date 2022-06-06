import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (splashController) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
