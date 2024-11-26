import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class NotifyInfo {
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
