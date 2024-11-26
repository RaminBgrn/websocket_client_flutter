import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;

  const LoginTextField(
      {required this.controller,
      required this.label,
      required this.isPassword,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          style: GoogleFonts.openSans(
            fontSize: 14,
            color: ColorPalette.myGrey[200],
          ),
          decoration: InputDecoration(
            border: _border(),
            focusedBorder: _border(),
            enabledBorder: _border(),
            label: Text(
              label,
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: ColorPalette.myGrey[400],
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: ColorPalette.myGrey[600]!,
        width: 1,
      ),
    );
  }
}
