import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/constants/ui_constants/custom_card.dart';
import 'package:heal_chat/models/mood_model.dart';

class MoodCard extends StatelessWidget {
  const MoodCard({super.key});

  final List<MoodModel> healthDetails = const [
    MoodModel(
        icon: Icon(
          Icons.person,
          color: Colors.white,
          size: 52,
        ),
        title: "Anxiety"),
    MoodModel(
        icon: Icon(
          Icons.person,
          color: Colors.white,
          size: 52,
        ),
        title: "Loneliness"),
    MoodModel(
        icon: Icon(
          Icons.person,
          color: Colors.white,
          size: 52,
        ),
        title: "Depression"),
    MoodModel(
        icon: Icon(
          Icons.person,
          color: Colors.white,
          size: 52,
        ),
        title: "Stress")
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              healthDetails[i].icon,
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: GestureDetector(
                  onTap: () => GoRouter.of(context).go("/users"),
                  child: Text(
                    healthDetails[i].title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
