import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/BlackLastLine.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/SendMoneyAppBar.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page3_Statistics/IncomeAndExpenditure.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page3_Statistics/RangePerDay.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page3_Statistics/YourBalance.dart';
import 'package:sarahalgodah_project2/constant.dart';

class Statistics extends StatefulWidget {
  Statistics({
    super.key,
  });

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  double heightAfterChangeMon = 0;
  double heightAfterChangeTue = 0;
  double heightAfterChangeWed = 0;
  double heightAfterChangeThu = 0;
  double heightAfterChangeFri = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGroundColor,
      body: ListView(children: [
        SendMoneyAppBar(
          appBarPagetitle: "Statistics",
          onTapArrow_back: () {
            Navigator.pushReplacementNamed(context, "SendMoney");
          },
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const YourBalance(),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RangePerDay(
                            day: "Mon",
                            rangeColor: widgetGroundColor,
                            height: heightAfterChangeMon,
                            onPressed: () {//This is For Animation on click on Day field
                              setState(() {
                                heightAfterChangeMon = 120;
                              });
                            },
                          ),
                          RangePerDay(
                            day: "Tue",
                            height: heightAfterChangeTue,
                            rangeColor: widgetGroundColor,
                            onPressed: () {//This is For Animation on click on Day field
                              setState(() {
                                heightAfterChangeTue = 100;
                              });
                            },
                          ),
                          RangePerDay(
                            day: "Wed",
                            height: heightAfterChangeWed,
                            rangeColor: widgetGroundColor,
                            onPressed: () {//This is For Animation on click on Day field
                              setState(() {
                                heightAfterChangeWed = 80;
                              });
                            },
                          ),
                          RangePerDay(
                            day: "Thu",
                            height: heightAfterChangeThu,
                            rangeColor: primaryColor,
                            onPressed: () {//This is For Animation on click on Day field
                              setState(() {
                                heightAfterChangeThu = 200;
                              });
                            },
                          ),
                          RangePerDay(
                            day: "Fri",
                            height: heightAfterChangeFri,
                            rangeColor: widgetGroundColor,
                            onPressed: () { //This is For Animation on click on Day field
                              setState(() {
                                heightAfterChangeFri = 130;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IncomeAndExpenditure(
                      titleCard: "Income",
                      price: 25.245,
                      imageCard: "images/Income.png"),
                  IncomeAndExpenditure(
                      titleCard: "Expenditure",
                      price: 47.51,
                      imageCard: "images/expenditure.png"),
                ],
              ),
            ],
          ),
        ),
        const BlackLastLine()
      ]),
    );
  }
}
