import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar(
      {super.key,
      required this.day,
      required this.percentage,
      required this.barColor});
  final String day;
  final double percentage;
  final Color barColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.up,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          day,
          style: const TextStyle(
            color: Color(0xFF446388),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          width: 38,
          height: 200 * percentage,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: barColor,
          ),
        )
      ],
    );
  }
}
