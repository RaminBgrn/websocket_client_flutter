import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/splash/viewModel/splash_view_model.dart';
import 'package:websocket_client_flutter/gen/assets.gen.dart';

class SplashScreen extends GetView<SplashViewModel> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.myGrey[800],
      body: Center(
        child: GetBuilder<SplashViewModel>(builder: (ctl) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOutCirc,
                      top: ctl.getPositionTop,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: AnimatedOpacity(
                        opacity: ctl.getOpacity,
                        duration: const Duration(milliseconds: 600),
                        child: Assets.images.logo.image(),
                      ),
                    ),
                  ],
                ),
              ),
              ctl.show
                  ? const SizedBox(
                      width: 50,
                      height: 50,
                      child:
                          LoadingIndicator(indicatorType: Indicator.ballBeat),
                    )
                  : const SizedBox()
            ],
          );
        }),
      ),
    );
  }
}
