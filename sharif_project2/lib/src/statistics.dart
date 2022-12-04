// ignore_for_file: file_names, prefer_const_constructors,prefer_const_literals_to_create_immutables, library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:sharif_project2/components/StatisticsMainCard.dart';
import 'package:sharif_project2/components/StatisticsSubCard.dart';

class Statistics extends StatelessWidget {
  final double balance;
  const Statistics({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: const Text(
          'Statistics',
          style: TextStyle(
            color: Color(0xff283B51),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 138, 202, 232),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 138, 202, 232),
            ),
            child: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      ),
      body: ListView(
        children: [
          StatisticsMainCard(balance: balance/*balance: 154723.00*/),
          Padding(
            padding: EdgeInsets.all(15),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 20,
              runSpacing: 20,
              children: [
                StatisticsSubCard(
                  name: 'Income',
                  amount: 25.245,
                ),
                StatisticsSubCard(
                  name: 'Expenditure',
                  amount: 47.51,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
