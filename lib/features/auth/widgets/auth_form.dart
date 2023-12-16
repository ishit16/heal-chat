import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/constants/theme_constants.dart';

import 'already_have_account.dart';

class AuthForm extends StatelessWidget {
  final bool isLoginForm;
  const AuthForm({super.key, required this.isLoginForm});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your Email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              isLoginForm ? "Login".toUpperCase() : "Signup".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              isLoginForm
                  ? GoRouter.of(context).go("/signup")
                  : GoRouter.of(context).go("/login");
            },
            login: isLoginForm,
          ),
        ],
      ),
    );
  }
}
