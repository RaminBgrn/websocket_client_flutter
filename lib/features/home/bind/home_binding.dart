import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/home/viewModel/home_view_model.dart';
import 'package:websocket_client_flutter/features/profile/data/user_data_remote.dart';
import 'package:websocket_client_flutter/features/profile/viewModel/profile_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeViewModel());
    Get.lazyPut(() => ProfileViewModel(remoteData: UserDataRemote()));
  }
}
