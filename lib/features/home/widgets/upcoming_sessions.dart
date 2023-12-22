import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingSession extends StatelessWidget {
  const UpcomingSession({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color(0xFF21222D),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16), // Top margin for "Upcoming Sessions"
            Text(
              "Upcoming Sessions",
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Spacer(), // Pushes "None Scheduled" to the center
            Expanded(
              child: Center(
                child: Text(
                  "None Scheduled",
                  style: GoogleFonts.roboto(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Bottom margin for "None Scheduled"
          ],
        ),
      ),
    );
  }
}
