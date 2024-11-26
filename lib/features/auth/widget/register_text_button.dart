import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class RegisterTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const RegisterTextButton({
    required this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: GoogleFonts.openSans(
          fontSize: 14,
          color: ColorPalette.myBlueLight[300],
        ),
      ),
    );
  }
}
