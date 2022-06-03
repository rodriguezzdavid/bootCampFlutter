import 'package:dio/dio.dart';
import 'package:getxlearning/models/app_user.dart';

class UsersAPI {
  final _dio = Dio();

  Future<List<AppUser>> getUsers(int page) async {
    try {
      var users = <AppUser>[];

      final response = await _dio.get(
        "https://reqres.in/api/users",
        queryParameters: {
          "page": page,
          "delayed": 5,
        },
      );

      final usersResponseData = response.data["data"] as List<dynamic>;

      for (var item in usersResponseData) {
        users.add(AppUser.fromJSON(item));
      }

      return users;
    } catch (ex) {
      print("getUsers ex");
      print(ex);
      return <AppUser>[];
    }
  }
}
