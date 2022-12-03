import 'package:flutter/material.dart';
import 'package:project2/component/appbar.dart';
import 'package:project2/component/appbarSta.dart';
import 'package:project2/component/conSta.dart';

class Statistics extends StatelessWidget {
  static const String screenSta = "Statistics";

  Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: SafeArea(
          child: Stack(
        children: [
          AppBarSta(),
          Padding(
            padding: const EdgeInsets.only(top: 95, left: 40),
            child: Container(
              width: 327,
              height: 385,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 115,
              left: 70,
            ),
            child: Container(
              width: 270,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF5F7FA)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 80),
            child: Text(
              "Your Balance",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 137, left: 200),
            child: Text(
              r"$154.723.00",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 60),
            child: ConSta(
              h: 162,
              c: Color(0xffD3DDE9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 267, left: 120),
            child: ConSta(
              h: 145,
              c: Color(0xffD3DDE9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 305, left: 180),
            child: ConSta(
              h: 107,
              c: Color(0xffD3DDE9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 223, left: 240),
            child: ConSta(
              h: 190,
              c: Color(0xff283B51),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 255, left: 300),
            child: ConSta(
              h: 158,
              c: Color(0xffD3DDE9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 65),
            child: Text(
              "Mon",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 125),
            child: Text(
              "Tue",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 185),
            child: Text(
              "Wed",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 245),
            child: Text(
              "Thu",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 310),
            child: Text(
              "Fri",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 40),
            child: Container(
              width: 151,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffDCE8F5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 575, left: 92),
            child: Text(
              "Income",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530, left: 98),
            child: Image.asset("images/receive-square-2.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 60),
            child: SizedBox(
              width: 115,
              child: Divider(
                color: Color(0xffBBCADD),
                thickness: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 630, left: 80),
            child: Text(
              r"$25.245",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 220),
            child: Container(
              width: 151,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffDCE8F5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 575, left: 260),
            child: Text(
              "Expenditure",
              style: TextStyle(color: Color(0xff446388)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 535, left: 280),
            child: Container(
                width: 32,
                height: 32,
                child: Image.asset("images/send-sqaure-2.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 240),
            child: SizedBox(
              width: 115,
              child: Divider(
                color: Color(0xffBBCADD),
                thickness: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 630, left: 265),
            child: Text(
              r"$47.51",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 760, left: 135),
            child: Container(
              height: 5,
              width: 134,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
