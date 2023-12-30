import 'package:flutter/material.dart';
import 'package:heal_chat/common/bottom_sheet_option.dart';

Future displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: const Color(0xFF171821),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    builder: (context) => SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: const Column(
        children: [
          SizedBox(height: 24),
          BottomSheetOption(
            option: "Profile Settings",
            optionColor: Colors.white,
            icon: Icons.person,
          ),
          SizedBox(height: 1),
          SizedBox(height: 4),
          BottomSheetOption(
            option: "Notifications",
            optionColor: Colors.white,
            icon: Icons.notifications,
          ),
          SizedBox(
            height: 5,
          ),
          BottomSheetOption(
            option: "Logout",
            optionColor: Colors.redAccent,
            icon: Icons.logout,
          ),
        ],
      ),
    ),
  );
}
