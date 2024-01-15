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
  Widget build(BuildContext context) {
    final String currentRoute = GoRouterState.of(context).uri.toString();
    print(currentIndex);
    if (currentRoute == '/home') {
      currentIndex = 0;
    } else if (currentRoute == '/my-profile') {
      currentIndex = 1;
    }

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
