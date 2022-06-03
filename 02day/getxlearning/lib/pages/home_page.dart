// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/home_controller.dart';
import 'package:getxlearning/widgets/counter_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("HomePage build");
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (homeController) {
        print("HomePage getx builder");
        return Scaffold(
          appBar: AppBar(
            title: const Text("GetX"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'You have pushed the button this many times:',
                ),
                CounterText(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: homeController.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
