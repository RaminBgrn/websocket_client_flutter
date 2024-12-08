import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/home/viewModel/home_view_model.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = 500;
    double minWidth = 400;

    return Container(
      width: () {
        if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
          maxWidth = 500;
          minWidth = 400;
          return MediaQuery.sizeOf(context).width * 0.2;
        } else {
          maxWidth = MediaQuery.sizeOf(context).width;
          minWidth = 0;
          return MediaQuery.sizeOf(context).width;
        }
      }(),
      padding: () {
        if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
          return const EdgeInsets.only(
              left: 70, top: 12, bottom: 12, right: 12);
        } else {
          return const EdgeInsets.all(12);
        }
      }(),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height,
        minHeight: MediaQuery.sizeOf(context).height,
        maxWidth: maxWidth,
        minWidth: minWidth,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.myGrey[900]!,
        borderRadius: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              )
            : const BorderRadius.all(Radius.zero),
      ),
      child: GetBuilder<HomeViewModel>(
        builder: (ctl) {
          return ctl.getMenuContent;
        },
      ),
    );
  }
}
