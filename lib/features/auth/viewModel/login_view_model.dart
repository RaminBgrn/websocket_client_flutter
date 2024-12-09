import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/common/notify_info.dart';
import 'package:websocket_client_flutter/common/validation.dart';
import 'package:websocket_client_flutter/features/auth/model/auth_model.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

class LoginViewModel extends GetxController {
  late AuthServices authServices;
  late AuthModel authModel;

  LoginViewModel({required this.authServices});

  bool _loadingFlag = false;
  bool get isLoading => _loadingFlag;

  final TextEditingController _emailCtl = TextEditingController();
  TextEditingController get getEmailCtl => _emailCtl;

  final TextEditingController _passwordCtl = TextEditingController();
  TextEditingController get getPasswordCtl => _passwordCtl;

  void onSubmitTap() {
    if (!Validation.inputs(false, _emailCtl, "Email Not Valid",
        "Please check your email address and try again")) return;
    if (!Validation.inputs(true, _passwordCtl, "Password Not Valid",
        "Password should be more than 8 characters")) return;
    _loadingFlag = true;
    authModel = AuthModel(email: _emailCtl.text, password: _passwordCtl.text);
    sendLogin(authModel);
    update();
  }

  void sendLogin(AuthModel model) async {
    final loginResponse = await authServices.login(model);

    if (loginResponse.httpResponse!.statusCode == 404) {
      NotifyInfo.showSnackBar(
          borderColor: Colors.red,
          title: 'Unauthorized',
          message: 'Email or Password is not correct');
      _loadingFlag = false;
      update();
      return;
    }
    if (await TokenService()
        .storeAccessToken(loginResponse.decodedBody['data']['token'])) {
      Get.offAllNamed(RoutePath.home,
          arguments: loginResponse.decodedBody['data']['user']);
      return;
    }
    NotifyInfo.showSnackBar(
        borderColor: Colors.red,
        title: "Token Error",
        message: 'Token not stored successfully');
  }

  @override
  void dispose() {
    _emailCtl.dispose();
    _passwordCtl.dispose();
    super.dispose();
  }
}
