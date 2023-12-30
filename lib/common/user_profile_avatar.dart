import 'package:flutter/material.dart';
import 'package:heal_chat/common/bottom_sheet.dart';

class UserProfileAvatar extends StatelessWidget {
  const UserProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => displayBottomSheet(context),
      child: const CircleAvatar(
        radius: 24.0,
        backgroundImage: AssetImage("assets/images/user.jpg"),
      ),
    );
  }
}
