import 'package:flutter/material.dart';

class UserProfileAvatar extends StatelessWidget {
  const UserProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24.0,
      backgroundImage: AssetImage("assets/images/user.jpg"),
    );
  }
}
