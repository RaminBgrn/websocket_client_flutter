import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/common/notify_info.dart';
import 'package:websocket_client_flutter/features/home/enum/page_enum.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

class HomeViewModel extends GetxController {
  PageEnums _currentPage = PageEnums.profile;
  PageEnums get getCurrentPage => _currentPage;

  void onMenuItemSelect(PageEnums page) {
    _currentPage = page;
    update();
  }

  void logout() {
    NotifyInfo.showInsureDialog(
        height: 200,
        title: "Logout",
        description: "Are you sure to logout ?",
        onNo: () {
          Get.back();
        },
        onYes: () async {
          final authService = Get.put<AuthServices>(AuthServices());
          final tokenService = Get.put<TokenService>(TokenService());
          final logoutResponse = await authService.logOut();

          if (!logoutResponse.isOkey && !logoutResponse.isSuccessed) {
            NotifyInfo.showSnackBar(
                borderColor: Colors.red,
                title: 'Error',
                message: 'Something went wrong on logout process');
            return;
          }
          if (await tokenService.removeToken()) {
            Get.offAllNamed(RoutePath.login);
          }
          Get.back();
        });
  }
}
