import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

AppBar Header(BuildContext context) {
  return AppBar(
    backgroundColor: primaryGroundColor,
    elevation: 0,
    leadingWidth: MediaQuery.of(context).size.width,
    leading: const Padding(
      padding: EdgeInsets.only(left: defaultPadding, top: 15),
      child: Text(
        "~ Hi, Sarah!",
        style: TextStyle(
            color: primaryTextColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: defaultPadding),
        child: InkWell(
          onTap: () {},
          child: CircleAvatar(
              radius: 25,
              backgroundColor: widgetGroundColor,
              child: Image.asset("images/gallery.png")),
        ),
      ),
    ],
  );
}
