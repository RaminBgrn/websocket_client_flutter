import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/home/widgets/menu_item.dart';
import 'package:websocket_client_flutter/gen/assets.gen.dart';

class DesktopMenu extends StatelessWidget {
  const DesktopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: MediaQuery.sizeOf(context).height,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: ColorPalette.myGrey[700],
      ),
      child: Column(
        children: [
          Assets.images.logo.image(
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuItem(
                  onTap: () {},
                  icon: Assets.svgs.profile.path,
                ),
                const Gap(12),
                MenuItem(
                  onTap: () {},
                  icon: Assets.svgs.allUsers.path,
                ),
                const Gap(12),
                MenuItem(
                  onTap: () {},
                  icon: Assets.svgs.chats.path,
                ),
              ],
            ),
          ),
          MenuItem(
            onTap: () {},
            icon: Assets.svgs.logout.path,
          ),
          const Gap(28),
        ],
      ),
    );
  }
}
