import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_2/classes/account.dart';
import 'package:project_2/components/bar.dart';

class MainStatisticsCard extends StatelessWidget {
  const MainStatisticsCard({super.key, required this.testAccount});
  final Account testAccount;
  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.all(24),
      width: screenWidth * 0.872,
      height: screenhight * 0.474,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Container(
            width: (screenWidth * 0.872) * 0.853,
            height: (screenhight * 0.474) * 0.176,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xffF5F7FA),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                const Text(
                  "Your Balance",
                  style: TextStyle(
                    color: Color(0xff446388),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 44,
                ),
                Text(
                  NumberFormat.simpleCurrency(locale: "en_US", decimalDigits: 2)
                      .format(testAccount.balance),
                  style: const TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: (screenWidth * 0.872) * 0.853,
            height: (screenhight * 0.474) * 0.605,
            margin: const EdgeInsets.only(top: 37),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Bar(
                  day: "Mon",
                  percentage: 0.81,
                  barColor: Color(0xFFD3DDE9),
                ),
                Bar(
                  day: "Tue",
                  percentage: 0.725,
                  barColor: Color(0xFFD3DDE9),
                ),
                Bar(
                  day: "Wed",
                  percentage: 0.535,
                  barColor: Color(0xFFD3DDE9),
                ),
                Bar(
                  day: "Thu",
                  percentage: 0.985,
                  barColor: Color(0xFF446388),
                ),
                Bar(
                  day: "Fri",
                  percentage: 0.79,
                  barColor: Color(0xFFD3DDE9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
