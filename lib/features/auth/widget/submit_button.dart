import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SubmitButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorPalette.myBlueGrey[500],
          fixedSize: const Size(150, 40)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 16,
            color: ColorPalette.myGrey[300],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
