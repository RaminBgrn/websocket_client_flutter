import 'package:flutter/material.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: MediaQuery.sizeOf(context).width * 0.2,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height,
        minHeight: MediaQuery.sizeOf(context).height,
        maxWidth: 400,
        minWidth: 300,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.myGrey[900]!,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
    );
  }
}
