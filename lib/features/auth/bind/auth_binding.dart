import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/auth/viewModel/login_view_model.dart';
import 'package:websocket_client_flutter/features/auth/viewModel/register_view_model.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginViewModel(authServices: AuthServices()));
    Get.lazyPut(() => RegisterViewModel(authServices: AuthServices()));
  }
}
