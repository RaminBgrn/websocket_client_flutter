class ProfileModel {
  int? id;
  String? uuid;
  String? userName;
  String? mail;
  String? avatar;

  ProfileModel({
    this.id,
    this.uuid,
    this.userName,
    this.mail,
    this.avatar,
  });

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    userName = json['name'];
    mail = json['email'];
    avatar = json['avatar'];
  }
}
