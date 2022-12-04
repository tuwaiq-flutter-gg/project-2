import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project22/Statistics.dart';
import 'package:project22/components.dart';
import 'package:project22/sendMoney.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("~Hi, Norlanda!",
              style: TextStyle(
                  color: Color(0xff283B51),
                  fontSize: 15,
                  fontWeight: FontWeight.w900)),
          moreButton(
              shapeColor: Color(0xffD0DAE6),
              iconeColor: Color(0xff283B51),
              Icons: Icons.image_outlined)
        ]),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffD0DAE6),
          ),
          padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Main account",
                    style: TextStyle(
                      color: Color(0xff446388),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "\$154.723.00",
                    style: TextStyle(
                        color: Color(0xff283B51),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sendMoney()));
                      },
                      child: TopWith(
                        buttonColor: Color(0xff283B51),
                        buttonText: "Topup",
                        textColor: Colors.white,
                        icon: Icons.input_rounded,
                        iconColor: Colors.white,
                      )),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Statistics()));
                      },
                      child: TopWith(
                        buttonColor: Colors.white,
                        buttonText: "Whithdraw",
                        textColor: Color(0xff283B51),
                        icon: Icons.outbond_outlined,
                        iconColor: Color(0xff283B51),
                      ))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              Text(
                "Recent Activity",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: Color(0xff446388),
                    fontSize: 14,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        activity(
            appName: "Figma", appDate: "12 August 2022", appPrice: "\$20.1"),
        SizedBox(
          height: 10,
        ),
        activity(
            appName: "Netflix", appDate: "07 August 2022", appPrice: "\$14.1"),
        SizedBox(
          height: 30,
        ),
        Text("Recent Send Money",
            style: TextStyle(
                color: Color(0xff283B51),
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Center(
            child: Row(
              children: [
                recentMoney(circleColor: Color(0xffEBF2F9), circleName: "Agus"),
                Spacer(),
                recentMoney(
                    circleColor: Color.fromARGB(255, 243, 225, 195),
                    circleName: "Siti"),
                Spacer(),
                recentMoney(
                    circleColor: Color.fromARGB(255, 235, 232, 253),
                    circleName: "Udin"),
                Spacer(),
                recentMoney(
                    circleColor: Color.fromARGB(255, 222, 196, 233),
                    circleName: "Tina")
              ],
            ),
          ),
        )
      ]),
    );
  }
}
