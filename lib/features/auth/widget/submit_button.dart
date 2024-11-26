import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loadingFlag;
  const SubmitButton({
    required this.title,
    required this.onTap,
    required this.loadingFlag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorPalette.myBlueGrey[500],
            fixedSize: const Size(150, 40)),
        child: loadingFlag ? LoadingIndicator(
          indicatorType: Indicator.ballBeat,
          colors: [ColorPalette.myGrey[400]!, ColorPalette.myGrey[500]!],
        ):
         Padding(
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
