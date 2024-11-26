import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/common/validation.dart';

class RegisterViewModel extends GetxController {
  bool _loadingFlag = false;
  bool get isLoading => _loadingFlag;

  final TextEditingController _userNameCtl = TextEditingController();
  TextEditingController get getUserNameCtl => _userNameCtl;

  final TextEditingController _emailCtl = TextEditingController();
  TextEditingController get getEmailCtl => _emailCtl;

  final TextEditingController _passwordCtl = TextEditingController();
  TextEditingController get getPasswordCtl => _passwordCtl;

  void onSubmit() {
    if (!Validation.inputs(true, _userNameCtl, "User Name To Short",
        'User name should be more then 3 characters',
        contentLength: 3)) return;
    if (!Validation.inputs(false, _emailCtl, "Email Not Valid",
        "Please check your email address and try again")) return;
    if (!Validation.inputs(true, _passwordCtl, "Password Not Valid",
        "Password should be more than 8 characters")) return;
    _loadingFlag = true;
    update();
  }
}
