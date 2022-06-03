// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/users_controller.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
      init: UsersController(),
      builder: (usersController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users"),
          ),
          body: const Center(
            child: Text(
              "Users page",
            ),
          ),
        );
      },
    );
  }
}
