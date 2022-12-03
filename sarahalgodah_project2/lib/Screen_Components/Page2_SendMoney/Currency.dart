
import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class Currency extends StatelessWidget {
  const Currency({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 27,
      width: 68,
      decoration: BoxDecoration(
          color: widgetGroundColor,
          borderRadius: BorderRadius.circular(35)),
      child: const Text(
        "USD",
        style: TextStyle(color: primaryTextColor),
      ),
    );
  }
}