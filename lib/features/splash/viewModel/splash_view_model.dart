import 'package:get/get.dart';

class SplashViewModel extends GetxController {
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
      Future.delayed(const Duration(milliseconds: 1500), () {
        _showLoadingIndicator = true;
        update();
      });
    });
    super.onReady();
  }
}
