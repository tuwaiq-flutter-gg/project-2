import 'package:flutter/material.dart';

class bottomImages extends StatelessWidget {
  const bottomImages({super.key, required this.bottomImage, required this.bottomColor});
final Icon bottomImage;
final Color bottomColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/8,
      width: MediaQuery.of(context).size.width/7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(94),
        color: bottomColor,
      ),
      child: (bottomImage),
    );
  }
}