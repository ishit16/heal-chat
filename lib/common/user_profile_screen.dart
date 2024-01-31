import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/common/edit_user_info.dart';
import 'package:heal_chat/common/layout.dart';
import 'package:heal_chat/common/user_profile_info.dart';
import 'package:heal_chat/features/auth/application/auth_service.dart';

class UserProfileScreen extends ConsumerStatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends ConsumerState<UserProfileScreen> {
  bool isEditing = false;
  void editProfile() => setState(() {
        isEditing = !isEditing;
      });

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(currentUserDetailsProvider).value;
    print(currentUser);
    return CommonLayout(
      child: SingleChildScrollView(
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
                    onPressed: () => editProfile(),
                    child: Text(
                      isEditing ? "View Profile" : "Edit Profile",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Divider(
                  color: Colors.grey.shade900,
                ),
                const SizedBox(height: 20),
                if (isEditing) // Conditionally render EditUserInfo widget
                  const EditUserInfo()
                else
                  const UserProfileInformation(
                    schoolName: "Institute of Technology (Bombay)",
                    degree: 'B.Tech',
                    sessionsTaken: '21',
                    aboutVolunteerText: 'Hii',
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
