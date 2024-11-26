class AuthModel {
  final String? uuid;
  final String? userName;
  final String email;
  final String password;

  AuthModel({
    required this.email,
    required this.password,
    this.uuid,
    this.userName,
  });
}
