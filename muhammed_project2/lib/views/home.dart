import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/component_testing/testingDir.dart';
import 'package:muhammed_project2/components/mySimpleAppBar.dart';
import 'package:muhammed_project2/views/send.dart';
import 'package:muhammed_project2/views/stats.dart';

import '../components/MyButton.dart';
import '../components/activity.dart';
import '../components/backgrountIcon.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: mySimpleAppBar(
            left: Text(
              "~ Hi, Norlanda !",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            right: backgroundIcon(
              centeredIcon: Image.asset("images/gallery.png"),
              backgroundColor: Color(0xffD0DAE6),
              height: 47,
              circular: true,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffDCE8F5),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Main account",
                          style:
                              TextStyle(color: Color(0xff446388), fontSize: 18),
                        ),
                        Text(
                          "\$154.723.00",
                          style:
                              TextStyle(color: Color(0xff283B51), fontSize: 36),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyButton(
                              height: MediaQuery.of(context).size.width / 5.7,
                              width: MediaQuery.of(context).size.width / 2.75,
                              borderRadius: 14,
                              buttonColor: Color(0xff283B51),
                              textWidget: Text(
                                "Topup",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              buttonIcon:
                                  Image.asset("images/receive-square-2.png"),
                            ),
                            MyButton(
                              height: MediaQuery.of(context).size.width / 5.7,
                              width: MediaQuery.of(context).size.width / 2.75,
                              borderRadius: 14,
                              buttonColor: Color(0xffF5F7FA),
                              textWidget: Text(
                                "Withdraw",
                                style: TextStyle(
                                    color: Color(0xff283B51), fontSize: 16),
                              ),
                              buttonIcon:
                                  Image.asset("images/send-sqaure-2.png"),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Activity",
                      style: TextStyle(
                          color: Color(0xff283B51),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xff446388),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Activity(
                    title: "Figma",
                    subTitle: "12 August 2022",
                    amount: 20.1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Activity(
                    title: "Netflix",
                    subTitle: "07 August 2022",
                    amount: 14.1,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
                child: Text(
                  "Recent Send Money",
                  style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width * .90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * .85 * .0428)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=> send())),
                        child: backgroundIcon(
                          centeredIcon: Image.asset("images/gallery.png"),
                          backgroundColor: Color(0xffD0DAE6),
                          height: 56,
                          circular: true,
                          text: Text("Augs"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                       onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=> statPage())),

                        child: backgroundIcon(
                          centeredIcon: Image.asset("images/gallery.png"),
                          backgroundColor: Color(0xffFBE7D0),
                          height: 56,
                          circular: true,
                          text: Text("Siti"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      backgroundIcon(
                        centeredIcon: Image.asset("images/gallery.png"),
                        backgroundColor: Color(0xffD0DAE6),
                        height: 56,
                        circular: true,
                        text: Text("Udin"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                       onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=> MyTest())),
                        child: backgroundIcon(
                          centeredIcon: Image.asset("images/gallery.png"),
                          backgroundColor: Color(0xffDEC6FC),
                          height: 56,
                          circular: true,
                          text: Text("Tina"),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: 5.5,
              margin: EdgeInsets.only(bottom: 4),
              width: MediaQuery.of(context).size.width * .42,
              decoration: BoxDecoration(
                  color: Color(0xff1F1F1F),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
        ],
      ),
    );
  }
}
