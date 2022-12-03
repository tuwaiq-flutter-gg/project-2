import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class TitleView extends StatelessWidget {
  TitleView({
    super.key,
    this.nameTitleView,
    this.subnameTitleView,
  });

  String? nameTitleView;
  String? subnameTitleView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameTitleView.toString(),
            style: const TextStyle(
                color: primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          InkWell(
              onTap: () {},
              child: Text(
                subnameTitleView.toString(),
                style: const TextStyle(color: secondaryTextColor, fontSize: 13),
              )),
        ],
      ),
    );
  }
}
