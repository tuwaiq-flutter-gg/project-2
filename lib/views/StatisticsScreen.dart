import 'package:flutter/material.dart';

import 'package:hadeel_project2/compentent/CustomStatCard.dart';
import 'package:hadeel_project2/compentent/DailyStatColumn.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffD0DAE6),
          ),
          child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: 15),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Color.fromRGBO(62, 88, 117, 1),
              icon: Icon(Icons.arrow_back_ios)),
        ),
        title: Text(
          "Statistics",
          style: TextStyle(
              color: Color(0xff283B51),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD0DAE6),
              ),
              child: IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  color: Color(0xff283B51),
                  icon: Icon(Icons.more_horiz)),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(24),
              ),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.42,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F7FA),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Balance",
                          style: TextStyle(
                              color: Color(0xff446388),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          "\$154.723.00",
                          style: TextStyle(
                              color: Color(0xff283B51),
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        DailyStatColumn(
                            height: 162, color: Color(0xffD3DDE9), day: "Mon"),
                        DailyStatColumn(
                            height: 145, color: Color(0xffD3DDE9), day: "Tue"),
                        DailyStatColumn(
                            height: 107, color: Color(0xffD3DDE9), day: "Wed"),
                        DailyStatColumn(
                            height: 197, color: Color(0xff283B51), day: "Thu"),
                        DailyStatColumn(
                            height: 158, color: Color(0xffD3DDE9), day: "Fri"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.42,
                child: Row(
                  children: [
                    CustomStatCard(
                      imageURL: "assets/images/receive-square-2.jpg",
                      title: "Income",
                      amount: 25.245,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    CustomStatCard(
                      imageURL: "assets/images/send-sqaure-2exp.jpg",
                      title: "Expenditure",
                      amount: 47.51,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
