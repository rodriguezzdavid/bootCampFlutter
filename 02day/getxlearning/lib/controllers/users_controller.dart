import 'package:get/get.dart';
import 'package:getxlearning/api/users_api.dart';
import 'package:getxlearning/models/app_user.dart';
import 'package:getxlearning/pages/user_details_page.dart';

class UsersController extends GetxController {
  final _usersAPI = UsersAPI();
  List<AppUser> users = [];
  bool _loading = true;

  bool get isLoading {
    return _loading;
  }

  int get totalFavorites {
    int totalFavorites = 0;

    for (var item in users) {
      if (item.isFavorite) {
        totalFavorites++;
      }
    }

    return totalFavorites;
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    await _loadUsersAsync();
  }

  Future<void> _loadUsersAsync() async {
    users = await _usersAPI.getUsers(1);
    _loading = false;
    update(["user-list"]);
  }

  changeFavoriteStatus(AppUser user) {
    user.isFavorite = !user.isFavorite;
    update(["user-list"]);
  }

  navigateToDetails(AppUser user) {
    Get.to(
      () {
        return const UserDetailsPage();
      },
      arguments: user,
    );
  }
}
