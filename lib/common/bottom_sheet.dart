import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      height: 300,
      child: const Column(
        children: [
          SizedBox(height: 10),
          BottomSheetOption(
            option: "Profile Settings",
            optionColor: Colors.white,
            icon: Icon(Icons.person),
          ),
          SizedBox(height: 5),
          BottomSheetOption(
            option: "Notifications",
            optionColor: Colors.white,
            icon: Icon(Icons.notifications),
          ),
          SizedBox(
            height: 5,
          ),
          BottomSheetOption(
            option: "Logout",
            optionColor: Colors.redAccent,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    ),
  );
}

class BottomSheetOption extends StatelessWidget {
  final String option;
  final Color optionColor;
  final Icon icon;
  const BottomSheetOption(
      {super.key,
      required this.option,
      required this.optionColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 12),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            option,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              color: optionColor,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
