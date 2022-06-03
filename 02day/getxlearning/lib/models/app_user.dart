class AppUser {
  int id;
  String email, firstName, lastName, avatar;

  AppUser({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory AppUser.fromJSON(dynamic json) {
    return AppUser(
      id: json["id"],
      email: json["email"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
    );
  }
}
