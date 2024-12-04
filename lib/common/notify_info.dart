import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/gen/assets.gen.dart';

class NotifyInfo {
  static showInsureDialog({
    double width = 350,
    double height = 300,
    required String title,
    required String description,
    required VoidCallback onYes,
    required VoidCallback onNo,
  }) {
    Get.dialog(Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorPalette.myGrey[800],
        ),
        child: Column(
          children: [
            const Gap(12),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: ColorPalette.myGrey[200],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                description,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: ColorPalette.myGrey[300],
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: onYes,
                    child: Assets.svgs.okay.svg(
                      width: 35,
                      height: 35,
                      colorFilter: ColorFilter.mode(
                          ColorPalette.myGreen[400]!, BlendMode.srcIn),
                    ),
                  ),
                ),
                const Gap(24),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: onNo,
                    child: Assets.svgs.cancel.svg(
                      width: 35,
                      height: 35,
                      colorFilter: ColorFilter.mode(
                          ColorPalette.myRed[400]!, BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(16),
          ],
        ),
      ),
    ));
  }

  static showSnackBar({
    required Color borderColor,
    required String title,
    required String message,
  }) {
    Get.snackbar("", "",
        titleText: Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 18,
            color: ColorPalette.myGrey[300],
            fontWeight: FontWeight.w600,
          ),
        ),
        messageText: Text(
          message,
          style: GoogleFonts.openSans(
            fontSize: 14,
            color: ColorPalette.myGrey[300],
            fontWeight: FontWeight.normal,
          ),
        ),
        maxWidth: 400,
        borderColor: borderColor.withOpacity(0.4),
        borderWidth: 1,
        margin: const EdgeInsets.only(top: 8),
        backgroundColor: borderColor.withOpacity(0.05));
  }
}
