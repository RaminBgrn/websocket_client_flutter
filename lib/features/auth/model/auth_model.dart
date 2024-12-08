class AuthModel {
  final String? uuid;
  final String? userName;
  final String? avatar;
  final String email;
  final String password;

  AuthModel({
    required this.email,
    required this.password,
    this.avatar,
    this.uuid,
    this.userName,
  });
}
