import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:project_2/classes/account.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.balance});
  final double balance;
  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenhight / 3.2,
      width: screenWidth,
      margin: const EdgeInsets.only(top: 28, bottom: 30),
      decoration: BoxDecoration(
        color: const Color(0xFFDCE8F5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Main account",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff446388),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            NumberFormat.simpleCurrency(locale: "en_US", decimalDigits: 2)
                .format(balance),
            style: const TextStyle(
              fontSize: 36,
              color: Color(0xff283B51),
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(5, 34, 5, 0),
                decoration: BoxDecoration(
                  color: const Color(0xff283B51),
                  borderRadius: BorderRadius.circular(14),
                ),
                height: (screenhight / 3.2) / 4,
                width: (screenWidth / 2.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Topup",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/receive-square-2.svg")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 34, 5, 0),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F7FA),
                  borderRadius: BorderRadius.circular(14),
                ),
                height: (screenhight / 3.2) / 4,
                width: (screenWidth / 2.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Withdraw",
                      style: TextStyle(
                        color: Color(0xFF283B51),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/icons/send-sqaure-2.svg")
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
