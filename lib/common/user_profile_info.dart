// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:heal_chat/features/volunteer_profile/presentation/about_volunteer.dart';
import 'package:heal_chat/features/volunteer_profile/presentation/profile_item.dart';

class UserProfileInformation extends StatelessWidget {
  final String schoolName;
  final String degree;
  final String sessionsTaken;
  final String aboutVolunteerText;
  const UserProfileInformation({
    Key? key,
    required this.schoolName,
    required this.degree,
    required this.sessionsTaken,
    required this.aboutVolunteerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileItem(
          title: schoolName,
          icon: Icons.school,
        ),
        const SizedBox(height: 10),
        ProfileItem(
          title: degree,
          icon: Icons.workspace_premium,
        ),
        const SizedBox(height: 10),
        ProfileItem(
          title: "Sessions Taken: $sessionsTaken",
          icon: Icons.group,
        ),
        Divider(
          color: Colors.grey.shade900,
        ),
        const SizedBox(height: 30),
        AboutVolunteer(aboutVolunteerText: aboutVolunteerText)
      ],
    );
  }
}
