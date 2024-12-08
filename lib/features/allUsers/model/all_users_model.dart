class AllUsersModel {
  int? id;
  String? avatar;
  String? userName;
  String? email;
  String? uuid;

  AllUsersModel({
    this.id,
    this.avatar,
    this.userName,
    this.email,
    this.uuid,
  });

  AllUsersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    userName = json['name'];
    email = json['email'];
    uuid = json['uuid'];
  }
}
