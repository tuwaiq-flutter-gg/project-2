// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, must_be_immutable
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatisticsSubCard extends StatelessWidget {
  final String name;
  final double amount;
  final amountFormat = NumberFormat("\$#,##0.00#");

  StatisticsSubCard({super.key, required this.amount, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2.3,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 28),
        color: Color.fromARGB(255, 138, 202, 232),
      ),
      padding: EdgeInsets.all(20),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Icon(
          Icons.trending_up_outlined,
          color: Colors.black,
          size: 35,
        ),
        Text(
          name,
          style: TextStyle(
            color: Color(0xff446388),
            fontSize: 18,
          ),
        ),
        Divider(
          thickness: 2,
          color: Colors.black,
        ),
        Text(
          amountFormat.format(amount),
          style: TextStyle(
            color: Color(0xff283B51),
            fontSize: 23,
          ),
        ),
      ]),
    );
  }
}
