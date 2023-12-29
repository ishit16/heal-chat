import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutVolunteer extends StatelessWidget {
  final String aboutVolunteerText;
  const AboutVolunteer({super.key, required this.aboutVolunteerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minWidth: 350, maxWidth: 350, minHeight: 200, maxHeight: 200),
      decoration: BoxDecoration(
        color: const Color(0xFF21222D),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            aboutVolunteerText,
            style: GoogleFonts.lato(
              color: Colors.white.withOpacity(0.1),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
