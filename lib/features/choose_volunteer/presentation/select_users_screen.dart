import 'package:flutter/material.dart';
import 'package:heal_chat/common/header.dart';
import 'package:heal_chat/features/choose_volunteer/presentation/contact_card.dart';

class SelectUsersScreen extends StatelessWidget {
  const SelectUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Header(
                heading: "Choose Volunteer",
                fontSize: 28,
              ),
              SizedBox(height: 12),
              ContactCard(name: "Ishit Garg"),
            ],
          ),
        ),
      ),
    );
  }
}
