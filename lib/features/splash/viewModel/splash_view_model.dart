import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  double _positionTop = -100;
  double get getPositionTop => _positionTop;

  double _opacity = 0;
  double get getOpacity => _opacity;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      _positionTop = 0;
      _opacity = 1;
      update();
    });
    super.onReady();
  }
}
