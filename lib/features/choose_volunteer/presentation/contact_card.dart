import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatelessWidget {
  final String name;
  const ContactCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF21222D),
        borderRadius: BorderRadius.circular(12), // Set the border radius here
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          bottom: 12,
          top: 12,
        ),
        child: GestureDetector(
          onTap: () => GoRouter.of(context).go("/profile"),
          child: Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/user.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Text(
                name,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
