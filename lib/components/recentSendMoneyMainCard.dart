import 'package:flutter/material.dart';

import '../Pages/sendMoneyPage.dart';
import 'MyIcon.dart';

class recentSendMoneyMainCard extends StatelessWidget {
  const recentSendMoneyMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent Send Money",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0XFF283B51)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
            width: screenWidth,
            height: screenhight / 8,
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(14)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SendMoneyPage(),
                      ),
                    );
                  },
                  child: MyIcon.label(
                    //svgPicturePath: "assets/icons/netflix-icon.svg",
                    backGroundColor: const Color(0xffDCE8F5),
                    size: 54,
                    label: "Agus",
                  ),
                ),
                MyIcon.label(
                  backGroundColor: const Color(0xffFBE7D0),
                  size: 54,
                  label: "Siti",
                ),
                MyIcon.label(
                  backGroundColor: const Color(0xffD6E3FC),
                  size: 54,
                  label: "Udin",
                ),
                MyIcon.label(
                  backGroundColor: const Color(0xffDEC6FC),
                  size: 54,
                  label: "Tina",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
