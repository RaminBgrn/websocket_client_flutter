import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class MenuItem extends StatefulWidget {
  final VoidCallback onTap;
  final String icon;

  const MenuItem({required this.onTap, required this.icon, super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  late Color iconColor;

  @override
  void initState() {
    iconColor = ColorPalette.myGrey[100]!;
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
            iconColor = ColorPalette.myPurple[300]!;
          });
        },
        onExit: (_) {
          setState(() {
            iconColor = ColorPalette.myGrey[100]!;
          });
        },
        child: SvgPicture.asset(
          widget.icon,
          width: 35,
          height: 35,
          colorFilter: ColorFilter.mode(
            iconColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
