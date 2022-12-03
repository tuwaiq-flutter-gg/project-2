import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/constant.dart';

class SendMoneyAppBar extends StatelessWidget {
   SendMoneyAppBar({
    super.key,
    this.appBarPagetitle,
    this.onTapArrow_back,
    this.onTapmore,
  });
  String? appBarPagetitle;
   Function()? onTapArrow_back;
   Function()? onTapmore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPadding, right: defaultPadding, top: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapArrow_back,
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: widgetGroundColor,
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: primaryColor,
                )),
          ),
          Text(appBarPagetitle!, style: const TextStyle(color: primaryTextColor , fontSize: 20, fontWeight: FontWeight.bold),),
          InkWell(
            onTap: onTapmore,
            child: const CircleAvatar(
                radius: 25,
                backgroundColor: widgetGroundColor,
                child: Icon(
                  Icons.more_horiz,
                  color: primaryColor,
                )),
          ),
        ],
      ),
    );
  }
}
