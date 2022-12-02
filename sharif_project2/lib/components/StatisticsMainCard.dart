// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, must_be_immutable
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sharif_project2/components/StatisticColumn.dart';

class StatisticsMainCard extends StatelessWidget {
  final double balance;
  final balanceFormat = NumberFormat.simpleCurrency();

  StatisticsMainCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 28),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 20),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width / 28),
              color: Color.fromARGB(255, 138, 202, 232),
            ),
            height: MediaQuery.of(context).size.width / 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Main account',
                  style: TextStyle(
                    color: Color(0xff446388),
                  ),
                ),
                Text(
                  balanceFormat.format(balance),
                  style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.9,
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticColumn(
                  name: 'Mon',
                  percentage: 70,
                  highlighted: false,
                ),
                StatisticColumn(
                  name: 'Tue',
                  percentage: 60,
                  highlighted: false,
                ),
                StatisticColumn(
                  name: 'Wed',
                  percentage: 40,
                  highlighted: false,
                ),
                StatisticColumn(
                  name: 'Thu',
                  percentage: 90,
                  highlighted: true,
                ),
                StatisticColumn(
                  name: 'Fri',
                  percentage: 65,
                  highlighted: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
