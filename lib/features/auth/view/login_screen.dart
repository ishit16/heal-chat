import 'package:flutter/material.dart';
import 'package:heal_chat/constants/theme_constants.dart';
import 'package:heal_chat/features/auth/widgets/auth_form.dart';
import 'package:heal_chat/features/auth/widgets/top_image.dart';
import 'package:heal_chat/utils/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
          desktop: Row(children: [
            Expanded(
              child: AuthTopImage(
                imageAddress: 'assets/icons/login.svg',
                imagePadding: defaultPadding * 2,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 450,
                    child: AuthForm(
                      isLoginForm: true,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AuthTopImage(
          imageAddress: 'assets/icons/login.svg',
          imagePadding: defaultPadding * 2,
        ),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: AuthForm(
                isLoginForm: true,
              ),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}
