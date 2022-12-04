import 'package:asma_project_2/componts/Icon.dart';
import 'package:asma_project_2/componts/appBar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../componts/CardActivity.dart';
import '../componts/CardBouttmPage.dart';
import '../componts/mainAccount.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      body: Column(
        children: [
          AppBarHomeScrean(),
          MainAccont(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Recent Activity",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 40,
                ),
                Text("See All",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView(
              children: [
                cardActivity(
                  activityDate: "12 August 2022",
                  nameActivity: "Figma",
                  price: "22.1",
                ),
                cardActivity(
                  activityDate: "07 August 2022",
                  nameActivity: "Netflix",
                  price: "14.1",
                ),
                cardActivity(
                  activityDate: "12 August 2022",
                  nameActivity: "Figma",
                  price: "22.1",
                ),
                cardActivity(
                  activityDate: "12 August 2022",
                  nameActivity: "Figma",
                  price: "22.1",
                ),
              ],
            ),
          ),
          CardBouttmPage()
        ],
      ),
    );
  }
}





// // cardActivity(
//             activityDate: "12 August 2022",
//             nameActivity: "Figma",
//             price: "22.1",
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           cardActivity(
//             activityDate: "07 August 2022",
//             nameActivity: "Netflix",
//             price: "14.1",
//           ),