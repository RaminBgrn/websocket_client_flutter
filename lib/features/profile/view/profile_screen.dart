import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/profile/viewModel/profile_view_model.dart';

class ProfileScreen extends GetView<ProfileViewModel> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        GetBuilder<ProfileViewModel>(builder: (ctl) {
          return Column(
            children: [
              Image.network(
                ctl.getUserProfile.avatar ??
                    "https://avatar.iran.liara.run/public/",
                width: 160,
                height: 160,
              ),
              const Gap(18),
              Text(
                ctl.getUserProfile.userName ?? 'Unknown',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.myGrey[200],
                ),
              ),
              const Gap(8),
              Text(
                ctl.getUserProfile.mail ?? "Unknown",
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: ColorPalette.myGrey[400],
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          );
        }),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
