import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class IAppBar {
  static PreferredSizeWidget appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 58),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) {
          return SizeTransition(
            sizeFactor: animation,
            axisAlignment: 1.0,
            child: child,
          );
        },
        child: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? AppBar(
                backgroundColor: ColorPalette.myGrey[800],
                title: Text(
                  'Websocket',
                  style: GoogleFonts.openSans(
                    color: ColorPalette.myGrey[300],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              )
            : const SizedBox(),
      ),
    );
  }
}
