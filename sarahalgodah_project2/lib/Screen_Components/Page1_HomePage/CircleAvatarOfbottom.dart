import 'package:flutter/material.dart';

class CircleAvatarOfbottom extends StatelessWidget {
  const CircleAvatarOfbottom({
    super.key,
    required this.bottomColor,
    required this.bottomText,
    required this.onTap,
  });

  final Color bottomColor;
  final String bottomText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
              radius: 30,
              backgroundColor: bottomColor,
              child: Image.asset("images/gallery.png")),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            bottomText,
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    );
  }
}
