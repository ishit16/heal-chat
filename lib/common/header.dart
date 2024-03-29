import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/common/user_profile_avatar.dart';

class Header extends StatelessWidget {
  final double? fontSize;
  final String heading;
  const Header({super.key, required this.heading, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  heading,
                  style: GoogleFonts.roboto(
                    fontSize: fontSize ?? 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const UserProfileAvatar(),
        ],
      ),
    );
  }
}
