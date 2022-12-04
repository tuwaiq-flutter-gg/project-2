import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.mainText,
    required this.svgPicturePath,
    required this.amount,
  });

  final String mainText, svgPicturePath;
  final double amount;
  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      height: screenhight * 0.268,
      width: screenWidth * 0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFFDCE8F5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgPicturePath),
          Text(
            mainText,
            style: const TextStyle(
              color: Color(0xff446388),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SvgPicture.asset("assets/icons/Vector 2007.svg"),
          Text(
            NumberFormat.simpleCurrency(locale: "en_US", decimalDigits: 3)
                .format(amount),
            style: const TextStyle(
              color: Color(0xff283B51),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
