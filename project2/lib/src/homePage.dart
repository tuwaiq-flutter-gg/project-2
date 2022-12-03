import 'package:flutter/material.dart';
import 'package:project2/component/cards.dart';
import 'package:project2/component/imageRec.dart';
import 'package:project2/src/SendMoney.dart';
import 'package:project2/src/Statistics.dart';

class HomePage extends StatelessWidget {
  static const String home = "home_Screen";

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "~ Hi, Rashed!",
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170, top: 15),
                  child: Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffD0DAE6)),
                      child: Image.asset("images/gallery.png")),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                height: 251,
                width: 327,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xffDCE8F5)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "Main account",
                        style:
                            TextStyle(color: Color(0xff446388), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        r"$154.723.00",
                        style: TextStyle(
                            color: Color(0xff283B51),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Statistics.screenSta);
                              },
                              child: Container(
                                width: 140,
                                height: 68,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff283B51)),
                                child:
                                    Image.asset("images/Frame 427320167.png"),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Send_money.screenRu);
                              },
                              child: Container(
                                width: 140,
                                height: 68,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffF5F7FA)),
                                child:
                                    Image.asset("images/Frame 427320168.png"),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Recent Activity",
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    "See All",
                    style: TextStyle(color: Color(0xff446388), fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Cards(
              title1: "Figma",
              subTitle2: "12 August 2022",
              count: r"$20.1",
              image: "fi1.png",
            ),
            Cards(
              title1: "Netflix",
              subTitle2: "07 August 2022",
              count: r"$14.1",
              image: "net4.png",
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160, top: 15, bottom: 5),
              child: Text(
                "Recent Send Money",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 115,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      ImageRec(
                        color1: Color(0xffDCE8F5),
                      ),
                      ImageRec(color1: Color(0xffFBE7D0)),
                      ImageRec(color1: Color(0xffD6E3FC)),
                      ImageRec(color1: Color(0xffDEC6FC)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Agus",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 52),
                        child: Text(
                          "Siti",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 57),
                        child: Text(
                          "Udin",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 53),
                        child: Text(
                          "Tina",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 5,
                width: 134,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
