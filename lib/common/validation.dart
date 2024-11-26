import 'package:flutter/material.dart';
import 'package:websocket_client_flutter/common/notify_info.dart';

class Validation {
  static bool inputs(
      bool isPassword, TextEditingController ctl, String title, String message,
      {int contentLength = 8}) {
    if (isPassword) {
      if (ctl.text.isNotEmpty && ctl.text.length > contentLength) return true;
      NotifyInfo.showSnackBar(
          borderColor: Colors.red, title: title, message: message);
      return false;
    } else {
      bool isEmail = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(ctl.text);
      if (isEmail && ctl.text.isNotEmpty) return true;
      NotifyInfo.showSnackBar(
          borderColor: Colors.red, title: title, message: message);
      return false;
    }
  }
}
