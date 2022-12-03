import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/CircleAvatarOfbottom.dart';
import 'package:sarahalgodah_project2/constant.dart';

class BottomNavigationbar extends StatelessWidget {
  BottomNavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatarOfbottom(
              bottomColor: widgetGroundColor,
              bottomText: "Agus",
              onTap: () {
                Navigator.pushReplacementNamed(context, "SendMoney");
              }),
          CircleAvatarOfbottom(
              bottomColor: Color(0xFFFBE7D0), bottomText: "Siti", onTap: () {}),
          CircleAvatarOfbottom(
              bottomColor: Color(0xFFD6E3FC), bottomText: "Udin", onTap: () {}),
          CircleAvatarOfbottom(
              bottomColor: Color(0xFFDEC6FC), bottomText: "Tina", onTap: () {}),
        ],
      ),
    );
  }
}
