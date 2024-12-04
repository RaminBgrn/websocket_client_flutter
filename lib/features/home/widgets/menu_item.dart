import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/home/enum/page_enum.dart';
import 'package:websocket_client_flutter/features/home/viewModel/home_view_model.dart';

class MenuItem extends StatefulWidget {
  final VoidCallback onTap;
  final PageEnums selectedPage;
  final String icon;
  final HomeViewModel homeViewController;

  const MenuItem(
      {required this.selectedPage,
      required this.onTap,
      required this.icon,
      required this.homeViewController,
      super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  late Color iconColor;

  @override
  void initState() {
    iconColor = widget.homeViewController.getCurrentPage == widget.selectedPage
        ? ColorPalette.myPurple[400]!
        : ColorPalette.myGrey[100]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            iconColor = ColorPalette.myPurple[400]!;
          });
        },
        onExit: (_) {
          setState(() {
            iconColor = ColorPalette.myGrey[100]!;
          });
        },
        child: GetBuilder<HomeViewModel>(builder: (ctl) {
          iconColor =
              widget.homeViewController.getCurrentPage == widget.selectedPage
                  ? ColorPalette.myPurple[400]!
                  : ColorPalette.myGrey[100]!;
          return SvgPicture.asset(
            widget.icon,
            width: 35,
            height: 35,
            colorFilter: ColorFilter.mode(
              iconColor,
              BlendMode.srcIn,
            ),
          );
        }),
      ),
    );
  }
}
