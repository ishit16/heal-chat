import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/constants/theme_constants.dart';
import 'package:heal_chat/features/auth/application/auth_service.dart';

import 'already_have_account.dart';

class AuthForm extends ConsumerStatefulWidget {
  final bool isLoginForm;
  const AuthForm({super.key, required this.isLoginForm});

  @override
  ConsumerState<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends ConsumerState<AuthForm> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void onSignUp() {
    ref.read(authServiceProvider.notifier).signUp(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  void onLogin() {
    ref.read(authServiceProvider.notifier).login(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          if (!widget.isLoginForm)
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: const InputDecoration(
                hintText: "Your Name",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your Email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          TextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "Your Password",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.lock),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () {
              if (widget.isLoginForm != true) {
                onSignUp();
              } else {
                onLogin();
              }
            },
            child: Text(
              widget.isLoginForm
                  ? "Login".toUpperCase()
                  : "Signup".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              widget.isLoginForm
                  ? GoRouter.of(context).go("/signup")
                  : GoRouter.of(context).go("/login");
            },
            login: widget.isLoginForm,
          ),
        ],
      ),
    );
  }
}
