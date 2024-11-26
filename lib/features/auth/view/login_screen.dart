import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/auth/widget/login_text_field.dart';
import 'package:websocket_client_flutter/features/auth/widget/register_text_button.dart';
import 'package:websocket_client_flutter/features/auth/widget/submit_button.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorPalette.myGrey[600]!.withOpacity(0.5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8,
                ),
                child: SizedBox(
                  child: Column(
                    children: [
                      const Gap(20),
                      Text(
                        'LOGIN',
                        style: GoogleFonts.openSans(
                          fontSize: 28,
                          color: ColorPalette.myGrey[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(30),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoginTextField(
                                controller: TextEditingController(),
                                label: "Email",
                                isPassword: false),
                            const Gap(12),
                            LoginTextField(
                                controller: TextEditingController(),
                                label: "Password",
                                isPassword: true),
                          ],
                        ),
                      ),
                      const Gap(30),
                      RegisterTextButton(
                        onTap: () {
                          Get.offNamed(RoutePath.register);
                        },
                        title: "I have not account",
                      ),
                      const Gap(10),
                      SubmitButton(
                        title: "Submit",
                        onTap: () {},
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}