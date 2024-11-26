import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/common/notify_info.dart';

class LoginViewModel extends GetxController {
  final TextEditingController _emailCtl = TextEditingController();
  TextEditingController get getEmailCtl => _emailCtl;

  final TextEditingController _passwordCtl = TextEditingController();
  TextEditingController get getPasswordCtl => _passwordCtl;

  void onSubmitTap() {
    if (!_validationInputs(false, _emailCtl)) return;
    if (!_validationInputs(true, _passwordCtl)) return;
  }

  bool _validationInputs(bool isPassword, TextEditingController ctl) {
    if (isPassword) {
      if (ctl.text.isNotEmpty && ctl.text.length > 8) return true;
      NotifyInfo.showSnackBar(
          borderColor: Colors.red,
          title: "Password Not Valid",
          message: "Password should be more than 8 characters");
      return false;
    } else {
      bool isEmail = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(ctl.text);
      if (isEmail && ctl.text.isNotEmpty) return true;
      NotifyInfo.showSnackBar(
          borderColor: Colors.red,
          title: "Email Not Valid",
          message: "Please check your email address and try again");
      return false;
    }
  }

  @override
  void dispose() {
    _emailCtl.dispose();
    _passwordCtl.dispose();
    super.dispose();
  }
}
