import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/features/volunteer_profile/presentation/about_volunteer.dart';
import 'package:heal_chat/features/volunteer_profile/presentation/profile_item.dart';

class VolunteerProfileScreen extends StatelessWidget {
  const VolunteerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/user.jpg"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Ishit Garg",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Committed to creating a lasting impact",
                style: GoogleFonts.roboto(
                  color: Colors.white60,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Request Session",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const SizedBox(height: 30),
              Divider(
                color: Colors.grey.shade900,
              ),
              const SizedBox(height: 20),
              const ProfileItem(
                title: "All India Institute of Medical Sciences",
                icon: Icons.school,
              ),
              const SizedBox(height: 10),
              const ProfileItem(
                title: "MBBS 3rd Year",
                icon: Icons.workspace_premium,
              ),
              const SizedBox(height: 10),
              const ProfileItem(
                title: "Sessions Taken: 21",
                icon: Icons.group,
              ),
              Divider(
                color: Colors.grey.shade900,
              ),
              const SizedBox(height: 30),
              const AboutVolunteer(aboutVolunteerText: "aboutVolunteerText")
            ],
          ),
        ),
      ),
    );
  }
}
