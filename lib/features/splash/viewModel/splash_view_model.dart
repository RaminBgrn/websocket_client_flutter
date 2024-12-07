import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/profile/viewModel/profile_view_model.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

class SplashViewModel extends GetxController {
  late AuthServices authServices;

  SplashViewModel({required this.authServices});

  double _positionTop = -100;
  double get getPositionTop => _positionTop;

  double _opacity = 0;
  double get getOpacity => _opacity;

  bool _showLoadingIndicator = false;
  bool get show => _showLoadingIndicator;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      _positionTop = 0;
      _opacity = 1;
      update();
      Future.delayed(const Duration(milliseconds: 1500), () async {
        _showLoadingIndicator = true;
        update();
        _checkToken();
      });
    });
    super.onReady();
  }

  void _checkToken() async {
    final String accessToken = await TokenService().getAccessToken();
    if (accessToken.isNotEmpty) {
      Get.find<ProfileViewModel>().getUserData();
    } else {
      Get.offAllNamed(RoutePath.login);
    }
  }
}
