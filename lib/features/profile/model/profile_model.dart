class ProfileModel {
  int? id;
  String? uuid;
  String? userName;
  String? mail;

  ProfileModel({
    this.id,
    this.uuid,
    this.userName,
    this.mail,
  });

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    userName = json['name'];
    mail = json['email'];
  }
}
