import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/home/viewModel/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeViewModel());
  }
}
