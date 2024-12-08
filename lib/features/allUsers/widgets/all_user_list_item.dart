import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
import 'package:websocket_client_flutter/features/allUsers/model/all_users_model.dart';

class AllUserListItem extends StatelessWidget {
  final AllUsersModel model;

  const AllUserListItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorPalette.myGrey[700]!.withOpacity(0.5),
      ),
      child: Row(
        children: [
          Image.network(
            model.avatar ?? 'https://avatar.iran.liara.run/public',
            width: 50,
            height: 50,
          ),
          const Gap(8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.userName ?? 'Unknown',
                  style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: ColorPalette.myGrey[200],
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  model.email ?? "Unknown",
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: ColorPalette.myGrey[200],
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const Gap(8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorPalette.myPurple[700],
            ),
            child: Text(
              'Contact',
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: ColorPalette.myGrey[200],
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
