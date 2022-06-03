import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/users_controller.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
      builder: (usersController) {
        if (usersController.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemBuilder: (ctx, index) {
            final user = usersController.users[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(user.avatar),
              ),
              title: Text("${user.firstName} ${user.lastName}"),
              subtitle: Text(user.email),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
            );
          },
          itemCount: usersController.users.length,
        );
      },
    );
  }
}
