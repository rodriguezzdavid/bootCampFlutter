import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controllers/users_controller.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
      id: "user-list",
      builder: (usersController) {
        if (usersController.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Column(
          children: [
            Text(
              "Total de favoritos: ${usersController.totalFavorites}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
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
                      onPressed: () {
                        usersController.changeFavoriteStatus(user);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: user.isFavorite ? Colors.red : Colors.grey,
                      ),
                    ),
                  );
                },
                itemCount: usersController.users.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
