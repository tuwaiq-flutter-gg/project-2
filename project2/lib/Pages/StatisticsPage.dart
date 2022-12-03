import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Components/AccountActivity.dart';
import '../Components/AppBarFullCom.dart';
import '../Components/StatisticsRatio.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBarFullCom(
        Title: "Statistics",
        boolCenterTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            height: 385,
            width: 327,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(width: 1, color: Color(0xFFFFFFFF)),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                //---------------------------------------------------------
                Container(
                  height: 68,
                  width: 279,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      border: Border.all(width: 1, color: Color(0xFFF5F7FA)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Balance",
                        style: TextStyle(
                            color: Color(0xFF4F6C8F),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$154.723.00",
                        style: TextStyle(
                            color: Color(0xFF283B51),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                //--------------------------------------------------------------
                SizedBox(
                  height: 40,
                ),
                //--------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    StatisticsRatio(
                      Height: 162,
                      Width: 38,
                      ColumnColor: Color(0xFFD3DDE9),
                      Day: "Mon",
                    ),
                    StatisticsRatio(
                      Height: 145,
                      Width: 38,
                      ColumnColor: Color(0xFFD3DDE9),
                      Day: "Tue",
                    ),
                    StatisticsRatio(
                      Height: 107,
                      Width: 38,
                      ColumnColor: Color(0xFFD3DDE9),
                      Day: "Wed",
                    ),
                    StatisticsRatio(
                      Height: 197,
                      Width: 38,
                      ColumnColor: Color(0xFF283B51),
                      Day: "Thu",
                    ),
                    StatisticsRatio(
                      Height: 153,
                      Width: 38,
                      ColumnColor: Color(0xFFD3DDE9),
                      Day: "Fri",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //----------------------------------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 0.5,
            ),
            AccountActivity(
              Icon: "images/Send (2).png",
              Type: "Income",
              Amount: 25.245,
            ),
            AccountActivity(
              Icon: "images/receive.png",
              Type: "Expenditure",
              Amount: 47.51,
            ),
            SizedBox(
              width: 0.5,
            ),
          ],
        )
      ]),
    );
  }
}
