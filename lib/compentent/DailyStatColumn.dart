import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DailyStatColumn extends StatelessWidget {
  const DailyStatColumn(
      {super.key,
      required this.height,
      required this.color,
      required this.day});
  final double height;
  final Color color;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: 38,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          day.toString(),
          style: TextStyle(
              color: Color(0xff446388),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
