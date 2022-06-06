import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class GenericPage extends StatelessWidget {
  const GenericPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GenericController>(
      builder: (genericController) {
        return const Scaffold();
      },
    );
  }
}
