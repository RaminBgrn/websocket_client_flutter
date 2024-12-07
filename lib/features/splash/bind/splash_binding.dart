import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/profile/data/user_data_remote.dart';
import 'package:websocket_client_flutter/features/profile/viewModel/profile_view_model.dart';
import 'package:websocket_client_flutter/features/splash/viewModel/splash_view_model.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashViewModel(authServices: AuthServices()));
    Get.lazyPut(() => ProfileViewModel(remoteData: UserDataRemote()));
  }
}
