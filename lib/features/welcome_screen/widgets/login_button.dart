import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/constants/theme_constants.dart';

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => GoRouter.of(context).go("/login"),
          child: Text(
            'Login'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () => GoRouter.of(context).go("/signup"),
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            elevation: 0,
          ),
          child: Text(
            'Sign Up'.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
