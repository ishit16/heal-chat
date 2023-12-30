import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/features/auth/application/auth_service.dart';

class BottomSheetOption extends ConsumerWidget {
  final String option;
  final Color optionColor;
  final IconData icon;
  const BottomSheetOption({
    super.key,
    required this.option,
    required this.optionColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onLogout() {
      print("Trying to log out");
      ref.read(authServiceProvider.notifier).logout(context);
      print("done");
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 20),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
            color: optionColor,
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              if (option == "Logout") {
                onLogout();
              }
            },
            child: Text(
              option,
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                color: optionColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
