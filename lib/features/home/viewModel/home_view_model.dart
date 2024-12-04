import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/home/enum/page_enum.dart';

class HomeViewModel extends GetxController {
  PageEnums _currentPage = PageEnums.profile;
  PageEnums get getCurrentPage => _currentPage;


  void onMenuItemSelect(PageEnums page){
    _currentPage = page;
    update();
  }
}
