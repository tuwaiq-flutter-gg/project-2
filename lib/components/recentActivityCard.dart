import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard(
      {super.key,
      this.svgPicturePath = "assets/icons/gallery.svg",
      this.mainText = "Mian Text",
      this.date = "dd month yyyy",
      this.price = 0});
  final String svgPicturePath, mainText, date;
  final double price;

  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: screenWidth,
      height: screenhight / 10,
      decoration: BoxDecoration(
        color: const Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: svgPicturePath == "assets/icons/gallery.svg"
                ? const EdgeInsets.all(20)
                : const EdgeInsets.all(0),
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 22),
            width: screenWidth / 6,
            height: screenWidth / 6,
            decoration: BoxDecoration(
              color: const Color(0XFFEBF2F9),
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            child: SvgPicture.asset(
              svgPicturePath,
            ),
          ),
          Container(
            width: screenWidth / 2.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff283B51),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xffA3B8D1),
                  ),
                ),
              ],
            ),
          ),
          Text(
            NumberFormat.simpleCurrency(
              locale: "en_US",
              decimalDigits: 1,
            ).format(price),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
