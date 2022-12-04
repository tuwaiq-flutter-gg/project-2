import 'package:flutter/material.dart';
import 'package:project_2/components/RecentActivityCard.dart';

class RecentActivityMainCard extends StatelessWidget {
  const RecentActivityMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Recent Activity",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF283B51)),
            ),
            Text(
              "See All",
              style: TextStyle(fontSize: 15, color: Color(0XFF446388)),
            ),
          ],
        ),
        const RecentActivityCard(
          svgPicturePath: "assets/icons/figmaIcon.svg",
          mainText: "Figma",
          date: "12 August 2022",
          price: 20.1,
        ),
        const RecentActivityCard(
          svgPicturePath: "assets/icons/netflix-icon.svg",
          mainText: "Netflix",
          date: "07 August 2022",
          price: 14.1,
        ),
      ],
    );
  }
}
