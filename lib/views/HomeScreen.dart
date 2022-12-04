import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_project2/compentent/CustomActivityCard.dart';
import 'package:hadeel_project2/compentent/CustomMoneySender.dart';
import 'package:hadeel_project2/views/TransferScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color.fromARGB(0, 255, 250, 250),
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "~ Hi, Norlanda!",
            style: TextStyle(color: Colors.black54),
          ),
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
                  icon: const FaIcon(FontAwesomeIcons.image),
                )),
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
                color: Color(0xffDCE8F5),
                borderRadius: BorderRadius.circular(24),
              ),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.32,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Main Account",
                    style: TextStyle(
                        color: Color(0xff446388),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$154.723.00",
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 36,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff283B51),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Topup",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              "assets/images/receive-square-2Topup.jpg",
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF5F7FA),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                  color: Color(0xff283B51),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              "assets/images/send-sqaure-2withdraw.jpg",
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recent Activity",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: Color(0xff446388),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          customActivityCard(
            name: "Figma",
            date: "12 August 2022",
            price: 20.1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          customActivityCard(
            name: "Netflix",
            date: "07 August 2022",
            price: 14.1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.72,
              child: Text(
                "Recent Send Money",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(14),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customMoneySender(
                      name: "Agus",
                      imageURL: "assets/images/galleryicon2.jpg",
                      color: Color(0xffD0DAE6),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => TransferScreen())));
                      },
                    ),
                    customMoneySender(
                      name: "Siti",
                      imageURL: "assets/images/galleryicon2.jpg",
                      color: Color(0xffFBE7D0),
                    ),
                    customMoneySender(
                      name: "Udin",
                      imageURL: "assets/images/galleryicon2.jpg",
                      color: Color(0xffD6E3FC),
                    ),
                    customMoneySender(
                      name: "Tina",
                      imageURL: "assets/images/galleryicon2.jpg",
                      color: Color(0xffDEC6FC),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.1,
                    // ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
