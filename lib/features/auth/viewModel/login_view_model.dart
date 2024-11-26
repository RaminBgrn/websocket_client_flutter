import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/common/validation.dart';

class LoginViewModel extends GetxController {
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
    update();
  }

  @override
  void dispose() {
    _emailCtl.dispose();
    _passwordCtl.dispose();
    super.dispose();
  }
}
