class AllUsersModel {
  int? id;
  String? userName;
  String? email;
  String? uuid;

  AllUsersModel({
    this.id,
    this.userName,
    this.email,
    this.uuid,
  });

  AllUsersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['name'];
    email = json['email'];
    uuid = json['uuid'];
  }
}
