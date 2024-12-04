import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/home/enum/page_enum.dart';
import 'package:websocket_client_flutter/features/home/viewModel/home_view_model.dart';
import 'package:websocket_client_flutter/features/home/widgets/menu_item.dart';
import 'package:websocket_client_flutter/gen/assets.gen.dart';

class DesktopMenu extends GetView<HomeViewModel> {
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
                  onTap: () {
                    controller.onMenuItemSelect(PageEnums.profile);
                  },
                  homeViewController: controller,
                  icon: Assets.svgs.profile.path,
                  selectedPage: PageEnums.profile,
                ),
                const Gap(12),
                MenuItem(
                  onTap: () {
                    controller.onMenuItemSelect(PageEnums.allUsers);
                  },
                  homeViewController: controller,
                  icon: Assets.svgs.allUsers.path,
                  selectedPage: PageEnums.allUsers,
                ),
                const Gap(12),
                MenuItem(
                  onTap: () {
                    controller.onMenuItemSelect(PageEnums.allChats);
                  },
                  homeViewController: controller,
                  icon: Assets.svgs.chats.path,
                  selectedPage: PageEnums.allChats,
                ),
              ],
            ),
          ),
          MenuItem(
            onTap: () {
              controller.logout();
            },
            homeViewController: controller,
            icon: Assets.svgs.logout.path,
            selectedPage: PageEnums.logout,
          ),
          const Gap(28),
        ],
      ),
    );
  }
}
