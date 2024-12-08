import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/auth/viewModel/register_view_model.dart';
import 'package:websocket_client_flutter/gen/assets.gen.dart';

class Avatar extends GetView<RegisterViewModel> {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        children: [
          GetBuilder<RegisterViewModel>(builder: (ctl) {
            return Image.network(ctl.getUserAvatar);
          }),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(right: 8, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black87,
              ),
              child: GestureDetector(
                onTap: () {
                  controller.refreshAvatarImage();
                },
                child: Assets.svgs.refresh.svg(
                  colorFilter: ColorFilter.mode(
                    ColorPalette.myPurple[300]!,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
