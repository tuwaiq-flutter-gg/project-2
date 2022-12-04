import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_2/classes/account.dart';
import 'package:project_2/components/MyIcon.dart';
import 'package:project_2/components/bar.dart';
import 'package:project_2/components/infoBox.dart';
import 'package:project_2/components/mainStatisticsCard.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key, required this.testAccount});
  final Account testAccount;
  @override
  Widget build(BuildContext context) {
    double screenhight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F7FA),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            // App bar row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: MyIcon(
                    svgPicturePath: "assets/icons/arrow-left.svg",
                    size: 47,
                    backGroundColor: const Color(0xffD0DAE6),
                  ),
                ),
                const Text(
                  "Statistics",
                  style: TextStyle(
                    color: Color(0Xff283B51),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyIcon(
                  svgPicturePath: "assets/icons/more-horizontal.svg",
                  size: 47,
                  backGroundColor: const Color(0xffD0DAE6),
                ),
              ],
            ),
            MainStatisticsCard(
              testAccount: testAccount,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoBox(
                  mainText: "Income",
                  svgPicturePath: "assets/icons/receive-square-2-filled.svg",
                  amount: 25.245,
                ),
                InfoBox(
                  mainText: "Expenditure",
                  svgPicturePath: "assets/icons/send-sqaure-2-filled.svg",
                  amount: 47.51,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
