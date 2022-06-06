import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/user_details_controller.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailsController>(
      init: UserDetailsController(),
      builder: (userDetailsController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("User details"),
          ),
          body: Center(
            child: Text(userDetailsController.user!.firstName),
          ),
        );
      }
    );
  }
}
