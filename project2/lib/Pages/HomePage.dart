import 'package:flutter/material.dart';
import 'package:project2/Components/AppBarCom.dart';
import '../Components/ButtonsCom.dart';
import '../Components/RecentActivityCom.dart';
import '../Components/RecentSMButtonsCom.dart';
import 'SendMomeyPage.dart';
import 'StatisticsPage.dart';

class Amjad_Project2 extends StatelessWidget {
  const Amjad_Project2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBarCom(
        IconImageAction: "images/gallery.png",
        Title: "~ Hi, Norlanda! ",
        boolCenterTitle: false,
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFDCE8F5)),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xFFDCE8F5),
            ),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Main account",
                style: TextStyle(
                    color: Color(0xFF446388),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "\$154.723.00",
                style: TextStyle(
                    color: Color(0xFF283B51),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonsCom(
                    Height: 68,
                    Width: 150,
                    ContainerColor: Color(0xFF283B51),
                    BorderRadius: BorderRadius.circular(10),
                    NameOfButton: "Topup",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    NameColor: Color(0xFFF5F7FA),
                    IconImage: "images/receive-square-2.png",
                  ),
                  ButtonsCom(
                    Height: 68,
                    Width: 150,
                    ContainerColor: Color(0xFFF5F7FA),
                    BorderRadius: BorderRadius.circular(10),
                    NameOfButton: "Withdraw",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    NameColor: Color(0xFF283B51),
                    IconImage: "images/send-sqaure-2.png",
                  ),
                ],
              )
            ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Recent Activity",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF283B51)),
            ),
            SizedBox(
              width: 100,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(color: Color(0xFF446388), fontSize: 15),
                ))
          ],
        ),
        Column(
          children: [
            RecentActivityCom(
              AppName: "Figma",
              Date: "12 August 2022",
              Price: 20.1,
            ),
            SizedBox(
              height: 15,
            ),
            RecentActivityCom(
              AppName: "Netflix",
              Date: "07 August 2022",
              Price: 14.1,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width / 15,
            ),
            Text(
              "Recent Send Money",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF283B51)),
            ),
          ],
        ),
        Center(
            child: Container(
          padding: EdgeInsets.only(top: 4),
          height: 110,
          width: 350,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFFFFFFF)),
          child: Row(
            children: [
              RecentSMButtonsCom(
                ButtonColor: Color(0xFFEBF2F9),
                Name: "Agus",
                PageName: ((context) => const SendMomeyPage()),
              ),
              RecentSMButtonsCom(
                ButtonColor: Color(0xFFFBE7D0),
                Name: "Siti",
                PageName: ((context) => const StatisticsPage()),
              ),
              RecentSMButtonsCom(
                ButtonColor: Color(0xFFD6E3FC),
                Name: "Udin",
              ),
              RecentSMButtonsCom(
                ButtonColor: Color(0xFFDEC6FC),
                Name: "Tina",
              ),
            ],
          ),
        )),
      ]),
    );
  }
}
