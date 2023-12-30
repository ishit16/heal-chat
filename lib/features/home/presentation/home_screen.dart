import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:heal_chat/common/header.dart';
import 'package:heal_chat/features/home/presentation/heading_span.dart';
import 'package:heal_chat/features/home/presentation/mood_card.dart';
import 'package:heal_chat/features/home/presentation/upcoming_sessions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32, left: 24),
                child: Header(
                  heading: "Home",
                ),
              ),
              SizedBox(
                height: 18,
              ),
              UpcomingSession(),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: HeadingSpan(
                  heading: "Pick A Mood",
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              MoodCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
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
      ),
    );
  }
}
