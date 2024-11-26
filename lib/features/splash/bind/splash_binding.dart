import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/splash/viewModel/splash_view_model.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashViewModel(authServices: AuthServices()),
    );
  }
}
