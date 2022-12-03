import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class RangePerDay extends StatelessWidget {
  RangePerDay({
    super.key,
    this.day,
    this.height,
    this.rangeColor,
    this.onPressed,
  });

  String? day;
  double? height;
  Color? rangeColor;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 165,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: rangeColor),
              duration: Duration(seconds: 2),
              height: height,
              width: 30,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: onPressed,
                child: Text(
                  day!,
                  style:
                      const TextStyle(fontSize: 14, color: secondaryTextColor),
                )),
          ],
        )
      ],
    );
  }
}
