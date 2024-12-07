import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/profile/data/user_data_remote.dart';
import 'package:websocket_client_flutter/features/profile/model/profile_model.dart';

class ProfileViewModel extends GetxController {
  late UserDataRemote remoteData;

  ProfileViewModel({required this.remoteData});

  ProfileModel _userProfile = ProfileModel();
  ProfileModel get getUserProfile => _userProfile;

  Future<void> getUserData() async {
    final response = await remoteData.fetchUserData();
    _userProfile = ProfileModel.fromJson(response.decodedBody['data']);
    update();
  }

  @override
  void onInit() {
    getUserData();
    super.onInit();
  }
}
