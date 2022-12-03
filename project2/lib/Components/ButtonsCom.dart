import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonsCom extends StatelessWidget {
  const ButtonsCom(
      {super.key,
      required this.Height,
      required this.Width,
      this.ContainerColor,
      this.BorderRadius,
      this.NameOfButton,
      this.fontSize,
      this.fontWeight,
      this.NameColor,
      this.IconImage,
      this.Padding});
  final double Height;
  final double Width;
  final ContainerColor;
  final BorderRadius;
  final Padding;
  final String? NameOfButton;
  final double? fontSize;
  final fontWeight;
  final NameColor;
  final IconImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Height,
      width: Width,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NameOfButton.toString(),
              style: TextStyle(
                  fontSize: fontSize, fontWeight: fontWeight, color: NameColor),
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(IconImage)
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: ContainerColor,
            padding: Padding,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius)),
      ),
    );
  }
}
