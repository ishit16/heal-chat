import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetOption extends StatelessWidget {
  final String option;
  final Color optionColor;
  final IconData icon;
  const BottomSheetOption(
      {super.key,
      required this.option,
      required this.optionColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 20),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
            color: optionColor,
          ),
          const SizedBox(width: 10),
          Text(
            option,
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              color: optionColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
