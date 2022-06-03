import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/home_controller.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CounterText build");
    return GetBuilder<HomeController>(
      // id: "counter-text-id",
      builder: (homeController) {
        print("CounterText getx builder");
        return Text(
          "${homeController.counter}",
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
