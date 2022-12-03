import 'package:flutter/material.dart';

class ImageRec extends StatelessWidget {
  ImageRec({super.key, this.color1});
  Color? color1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 10, top: 10),
      child: Container(
        height: 75,
        width: 56,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color1),
        child: Image.asset("images/gallery.png"),
      ),
    );
  }
}
