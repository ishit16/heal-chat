import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/routing/app_router.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // Use Future.delayed to schedule the logic after the widget has been fully initialized
    Future.delayed(Duration.zero, () {
      final String currentRoute = GoRouterState.of(context).uri.toString();
      if (currentRoute == '/home') {
        currentIndex = 0;
      } else if (currentRoute == '/profile') {
        currentIndex = 1;
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 65,
      animationDuration: const Duration(milliseconds: 400),
      backgroundColor: const Color(0xFF171821),
      color: const Color(0xFF21222D),
      index: currentIndex,
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
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });

        switch (index) {
          case 0:
            context.goNamed(AppRoute.home.name);
            break;
          case 1:
            context.goNamed(AppRoute.myprofile.name);
            break;
        }
      },
    );
  }
}
