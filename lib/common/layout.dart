// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:heal_chat/common/bottom_navigation.dart';

class CommonLayout extends StatelessWidget {
  final Widget child;
  const CommonLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
