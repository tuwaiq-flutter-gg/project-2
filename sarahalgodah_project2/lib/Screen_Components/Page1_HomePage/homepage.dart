import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Data/Data.dart';
import 'package:sarahalgodah_project2/Screen_Components/BlackLastLine.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/ListTileOfRecentActivity.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/MainAccountView.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/TitleView.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/appbar.dart';
import 'package:sarahalgodah_project2/constant.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/BottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGroundColor,
      appBar: Header(context),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                MainAccountView(),
                TitleView(
                    nameTitleView: "Recent Activity",
                    subnameTitleView: "See All"),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: SingleChildScrollView(
                    child: Column(
                        children: List.generate(
                            moneyActivity.length,
                            (index) => ListTileOfRecentActivity(
                                title: moneyActivity[index]["title"],
                                subTitle: moneyActivity[index]["date"],
                                money: double.parse(moneyActivity[index]
                                        ["money"]
                                    .toString())))),
                  ),
                ),
                TitleView(
                    nameTitleView: "Recent Send Money", subnameTitleView: ""),
                BottomNavigationbar(),
              ],
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(bottom: 8),
            child: BlackLastLine(),
          ),
        ],
      ),
    );
  }
}
