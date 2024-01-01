import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 65,
      animationDuration: const Duration(milliseconds: 400),
      backgroundColor: const Color(0xFF171821),
      color: const Color(0xFF21222D),
      items: const [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.person,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }
}
