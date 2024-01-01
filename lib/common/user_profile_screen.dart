import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/common/edit_user_info.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
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
              const EditUserInfo(),
              // const UserProfileInformation(
              //   schoolName: "Institute of Technology (Bombay)",
              //   degree: 'B.Tech',
              //   sessionsTaken: '21',
              //   aboutVolunteerText: 'Hii',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
