import 'package:flutter/material.dart';
import 'package:heal_chat/constants/theme_constants.dart';
import 'package:heal_chat/features/auth/widgets/auth_form.dart';
import 'package:heal_chat/utils/widgets.dart';
import '../widgets/top_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignupScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: AuthTopImage(
                  imageAddress: 'assets/icons/signup.svg',
                  imagePadding: defaultPadding * 2,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: AuthForm(
                        isLoginForm: false,
                      ),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AuthTopImage(
          imageAddress: 'assets/icons/signup.svg',
          imagePadding: defaultPadding,
        ),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: AuthForm(
                isLoginForm: false,
              ),
            ),
            Spacer(),
          ],
        ),
        // const SocalSignUp()
      ],
    );
  }
}
