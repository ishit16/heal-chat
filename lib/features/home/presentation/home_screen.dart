import 'package:flutter/material.dart';
import 'package:heal_chat/common/header.dart';
import 'package:heal_chat/features/home/presentation/heading_span.dart';
import 'package:heal_chat/features/home/presentation/mood_card.dart';
import 'package:heal_chat/features/home/presentation/upcoming_sessions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
    );
  }
}
