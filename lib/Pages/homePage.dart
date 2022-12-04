import 'package:flutter/material.dart';
import 'package:project_2/Pages/statistics.dart';

import 'package:project_2/classes/account.dart';
import 'package:project_2/components/myIcon.dart';
import 'package:project_2/components/mainCard.dart';
import 'package:project_2/components/recentActivityManiCard.dart';
import 'package:project_2/components/recentSendMoneyMainCard.dart';

// test object
const Account testAccount = Account(name: "Rakan", balance: 154723);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text(
                  "~ Hi, ${testAccount.name}!",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyIcon(
                  svgPicturePath: "assets/icons/gallery.svg",
                  size: 47,
                  backGroundColor: const Color(0xffD0DAE6),
                ),
              ],
            ),

            // Main card
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StatisticsPage(
                              testAccount: testAccount,
                            )));
              },
              child: MainCard(
                balance: testAccount.balance,
              ),
            ),

            // Recent Activity Main Card
            const RecentActivityMainCard(),

            // Recent Send Money Main Card
            const recentSendMoneyMainCard(),
          ],
        ),
      ),
    );
  }
}
